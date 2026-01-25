model:
	dart run build_runner build --delete-conflicting-outputs
clean:
	flutter clean && flutter pub get
apk:
	flutter build apk --release --no-tree-shake-icons



