import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travel/core/theme/theme.dart';
import 'dart:ui';
import '../models/destination_model.dart';
import '../viewmodels/destination_viewmodel.dart';

class DetailPage extends StatefulWidget {
  final Destination destination;

  const DetailPage({super.key, required this.destination});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
      DestinationViewModel().addToFavorite(widget.destination);
    } else {
      DestinationViewModel().removeFromFavorite(widget.destination);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite
              ? '${widget.destination.title} added to favorites ❤️'
              : '${widget.destination.title} removed from favorites 💔',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
                color: Colors.redAccent,
                size: 26,
              ),
              onPressed: toggleFavorite,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🏞️ Header Image Section
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    widget.destination.image,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // 🌫️ Gradient overlay for readability
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.4),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                // 🏷️ Title overlay
                Positioned(
                  left: 20,
                  bottom: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.destination.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 8,
                              color: Colors.black54,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              color: Colors.white70, size: 18),
                          const SizedBox(width: 5),
                          Text(
                            widget.destination.location,
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 📝 Content Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ReadMoreText(
                    widget.destination.description,
                    trimLines: 6,
                    colorClickableText: Colors.blueAccent,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '  Read more',
                    trimExpandedText: '  Show less',
                    moreStyle:
                        const TextStyle(fontWeight: FontWeight.bold),
                    lessStyle:
                        const TextStyle(fontWeight: FontWeight.bold),
                    style: const TextStyle(
                        fontSize: 16, height: 1.6, color: Colors.black87),
                  ),
                  const SizedBox(height: 25),

                  // 🌍 Info Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _infoItem(Icons.sunny, "Best Season",
                          widget.destination.bestSeason),
                      _infoItem(Icons.access_time, "Open Time",
                          widget.destination.openTime),
                      _infoItem(Icons.attach_money, "Entry Fee",
                          widget.destination.entryFee),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // ✈️ Action Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentColor,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 4,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content:
                                  Text("Feature not available yet 🚧")),
                        );
                      },
                      icon: const Icon(Icons.explore_rounded,
                          color: Colors.white),
                      label: const Text(
                        "Explore More",
                        style:
                            TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Small reusable info widget
  Widget _infoItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blueAccent, size: 28),
        const SizedBox(height: 6),
        Text(label,
            style: const TextStyle(color: Colors.black54, fontSize: 13)),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
