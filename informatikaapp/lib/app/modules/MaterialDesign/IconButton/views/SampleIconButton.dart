import 'package:flutter/material.dart';


class SampleIconButton extends StatefulWidget {
  const SampleIconButton({super.key});


  @override
  State<SampleIconButton> createState() => _SampleIconButtonState();
}


class _SampleIconButtonState extends State<SampleIconButton> with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _scaleController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;
 
  bool _isFavorite = false;
  bool _isPlaying = false;
  double _volume = 0.5;
  int _rating = 3;


  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _scaleController = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
   
    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _rotationController, curve: Curves.easeInOut),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.elasticOut),
    );
  }


  @override
  void dispose() {
    _rotationController.dispose();
    _scaleController.dispose();
    super.dispose();
  }


  void _onIconPressed() {
    _scaleController.forward().then((_) => _scaleController.reverse());
  }


  void _toggleFavorite() {
    setState(() => _isFavorite = !_isFavorite);
    _rotationController.forward().then((_) => _rotationController.reverse());
    _onIconPressed();
  }


  void _togglePlay() {
    setState(() => _isPlaying = !_isPlaying);
    _onIconPressed();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton Demo'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _onIconPressed,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: _onIconPressed,
          ),
        ],
      ),
      body: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.touch_app, size: 80, color: Colors.indigo),
                  SizedBox(height: 20),
                  Text('IconButton Examples', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                 
                  Text('Basic IconButtons:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: _onIconPressed,
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: _onIconPressed,
                        color: Colors.grey,
                      ),
                      IconButton(
                        icon: Icon(Icons.info),
                        onPressed: _onIconPressed,
                        color: Colors.green,
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 20),
                  Text('Animated Favorite Button:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Center(
                    child: AnimatedBuilder(
                      animation: _rotationAnimation,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _rotationAnimation.value * 2 * 3.14159,
                          child: IconButton(
                            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
                            onPressed: _toggleFavorite,
                            color: _isFavorite ? Colors.red : Colors.grey,
                            iconSize: 40,
                          ),
                        );
                      },
                    ),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Play/Pause Button:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Center(
                    child: IconButton(
                      icon: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        child: Icon(
                          _isPlaying ? Icons.pause : Icons.play_arrow,
                          key: ValueKey(_isPlaying),
                        ),
                      ),
                      onPressed: _togglePlay,
                      color: Colors.green,
                      iconSize: 50,
                    ),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Volume Control:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.volume_down),
                        onPressed: () {
                          setState(() => _volume = (_volume - 0.1).clamp(0.0, 1.0));
                          _onIconPressed();
                        },
                      ),
                      Expanded(
                        child: Slider(
                          value: _volume,
                          onChanged: (value) => setState(() => _volume = value),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.volume_up),
                        onPressed: () {
                          setState(() => _volume = (_volume + 0.1).clamp(0.0, 1.0));
                          _onIconPressed();
                        },
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 20),
                  Text('Rating Stars:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(
                          index < _rating ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                        onPressed: () {
                          setState(() => _rating = index + 1);
                          _onIconPressed();
                        },
                      );
                    }),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Different Sizes:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: _onIconPressed,
                        iconSize: 20,
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: _onIconPressed,
                        iconSize: 30,
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: _onIconPressed,
                        iconSize: 40,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Text('Current State', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('Favorite: ${_isFavorite ? "❤️" : "🤍"}'),
                        Text('Playing: ${_isPlaying ? "▶️" : "⏸️"}'),
                        Text('Volume: ${(_volume * 100).toInt()}%'),
                        Text('Rating: ${"⭐" * _rating}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
