package com.android.systemui.edgelighting.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.view.accessibility.AccessibilityManager;
import com.samsung.android.util.SemLog;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TalkBackUtil implements TextToSpeech.OnInitListener {
    public static TalkBackUtil mInstance;
    public final AccessibilityManager mAccessibilityManager;
    public final Context mContext;
    public boolean mIsTalkbackMode = false;

    private TalkBackUtil(Context context) {
        new UtteranceProgressListener() { // from class: com.android.systemui.edgelighting.utils.TalkBackUtil.1
            @Override // android.speech.tts.UtteranceProgressListener
            public final void onDone(String str) {
                if (str.equals("TTS_END")) {
                    SemLog.v("TalkBackUtils", "TTS speaking is done!!!");
                    TalkBackUtil.this.getClass();
                    SemLog.v("TalkBackUtils", "TTS stop!!!");
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public final void onError(String str) {
                if (str.equals("TTS_END")) {
                    SemLog.e("TalkBackUtils", "Error occured during TTS speaks!!!");
                    TalkBackUtil.this.getClass();
                    SemLog.v("TalkBackUtils", "TTS stop!!!");
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public final void onStart(String str) {
                SemLog.v("TalkBackUtils", "TTS speaks now!!!");
            }
        };
        this.mContext = context;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("enabled_accessibility_services"), false, new ContentObserver(null) { // from class: com.android.systemui.edgelighting.utils.TalkBackUtil.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                super.onChange(z);
                TalkBackUtil.this.setTalkBackMode();
            }
        });
        setTalkBackMode();
        SemLog.d("TalkBackUtils", "TalkBackUtil instance create!!");
    }

    public static TalkBackUtil getInstance(Context context) {
        if (mInstance == null) {
            mInstance = new TalkBackUtil(context.getApplicationContext());
        }
        return mInstance;
    }

    @Override // android.speech.tts.TextToSpeech.OnInitListener
    public final void onInit(int i) {
        if (i == 0) {
            Locale locale = this.mContext.getResources().getConfiguration().locale;
        } else if (i == -1) {
            SemLog.d("TalkBackUtils", "Do not init TTS!!");
        }
    }

    public final void setTalkBackMode() {
        boolean z;
        String string = Settings.Secure.getString(this.mContext.getContentResolver(), "enabled_accessibility_services");
        if (string != null && (string.matches("(?i).*com.samsung.android.app.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"))) {
            z = true;
        } else {
            z = false;
        }
        this.mIsTalkbackMode = z;
    }
}
