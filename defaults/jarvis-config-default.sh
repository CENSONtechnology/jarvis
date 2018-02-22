check_updates=1
command_stt="LinSTT"
conversation_mode=true
dictionary="stt_engines/pocketsphinx/jarvis-dictionary.dic"
gain="0"
google_speech_api_key=""
jv_branch="master"
jv_bt_device_mac=""
jv_bt_device_name=""
jv_timeout=10
jv_use_bluetooth=false
phrase_failed="Cette commande a généré une erreur"
phrase_triggered=""
phrase_welcome="Bonjour"
phrase_misunderstood="Je n'ai pas compris"
language="fr_FR"
language_model="stt_engines/pocketsphinx/jarvis-languagemodel.lm"
min_noise_duration_to_start="0.1" # default 0.1
min_noise_perc_to_start="1%" # default 1%
min_silence_duration_to_stop="0.5" # default 0.5
min_silence_level_to_stop="1%" # default 1%
play_hw=false
pocketsphinxlog="/dev/null" # can get very big on long run
rec_hw=false
recorder="sox"
send_usage_stats=true
separator=""
show_commands=true
snowboy_checkticks=true
snowboy_sensitivity="0.4"
tempo="1.0"
trigger=""
trigger_mode="magic_word"
trigger_stt="snowboy"
tts_engine="svox_pico"
username="$(whoami)"
wit_server_access_token=""
