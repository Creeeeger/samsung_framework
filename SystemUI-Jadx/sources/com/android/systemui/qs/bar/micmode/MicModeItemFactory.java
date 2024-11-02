package com.android.systemui.qs.bar.micmode;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.qs.bar.micmode.MicModeDetailItems;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MicModeItemFactory {
    static {
        new MicModeItemFactory();
    }

    private MicModeItemFactory() {
    }

    public static final MicModeDetailItems.Item create(int i, Context context) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return new StandardVoipItem(context.getString(R.string.sec_qs_mic_mode_standard), 0, null, null, 14, null);
                    }
                    return new VoiceFocusCallItem(context.getString(R.string.sec_qs_mic_mode_voice_focus), 0, null, null, 14, null);
                }
                return new StandardCallItem(context.getString(R.string.sec_qs_mic_mode_standard), 0, null, null, 14, null);
            }
            return new FullSpectrumVoipItem(context.getString(R.string.sec_qs_mic_mode_full_spectrum), 0, null, null, 14, null);
        }
        return new VoiceFocusVoipItem(context.getString(R.string.sec_qs_mic_mode_voice_focus), 0, null, null, 14, null);
    }
}
