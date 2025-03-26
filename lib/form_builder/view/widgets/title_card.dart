import 'package:flutter/material.dart';
import 'package:form_builder_assignment/theme/colors.dart';

class TitleCard extends StatefulWidget {
  const TitleCard({
    required this.title,
    required this.description,
    required this.width,
    this.onTitleChanged,
    this.onDescriptionChanged,
    this.isEditing = true,
    super.key,
  });

  final String title;
  final String description;
  final ValueChanged<String>? onTitleChanged;
  final ValueChanged<String>? onDescriptionChanged;
  final bool isEditing;
  final double width;

  @override
  State<TitleCard> createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.title;
    _descriptionController.text = widget.description;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: widget.width,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline.withValues(
                  alpha: 0.2,
                ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border(
              top: BorderSide(
                width: 8,
                color: AC.purple,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  enabled: widget.isEditing,
                  controller: _titleController,
                  onChanged: widget.onTitleChanged,
                  onSubmitted: widget.onTitleChanged,
                  onEditingComplete: () {
                    FocusScope.of(context).nextFocus();
                  },
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  enabled: widget.isEditing,
                  controller: _descriptionController,
                  onChanged: widget.onDescriptionChanged,
                  onSubmitted: widget.onDescriptionChanged,
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                  },
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black54,
                      ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
