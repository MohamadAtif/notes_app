part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSucces extends NotesState {
 final List <NoteModel>notesList;

  NotesSucces(this.notesList);
}
class NotesFailure extends NotesState {
  final String errMessage;
  NotesFailure(this.errMessage);
}