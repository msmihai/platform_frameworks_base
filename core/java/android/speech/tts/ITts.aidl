/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.speech.tts;

import android.speech.tts.ITtsCallback;

import android.content.Intent;

/**
 * AIDL for the TTS Service
 * ITts.java is autogenerated from this.
 *
 * {@hide}
 */
interface ITts {
    void setSpeechRate(in int speechRate);

    void setPitch(in int pitch);

    void speak(in String text, in int queueMode, in String[] params);

    void speakIpa(in String ipaText, in int queueMode, in String[] params);

    boolean isSpeaking();

    void stop();

    void addSpeech(in String text, in String packageName, in int resId);

    void addSpeechFile(in String text, in String filename);

    String[] getLanguage();

    int isLanguageAvailable(in String language, in String country, in String variant);

    void setLanguage(in String language, in String country, in String variant);

    boolean synthesizeToFile(in String text, in String[] params, in String outputDirectory);

    boolean synthesizeIpaToFile(in String ipaText, in String[] params, in String outputDirectory);

    void playEarcon(in String earcon, in int queueMode, in String[] params);

    void addEarcon(in String earcon, in String packageName, in int resId);

    void addEarconFile(in String earcon, in String filename);

    void registerCallback(ITtsCallback cb);

    void unregisterCallback(ITtsCallback cb);

    void playSilence(in long duration, in int queueMode, in String[] params);
}
