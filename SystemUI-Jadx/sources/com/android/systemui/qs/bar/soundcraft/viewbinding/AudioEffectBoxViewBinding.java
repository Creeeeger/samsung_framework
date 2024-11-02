package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.LinearLayout;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectBoxViewBinding {
    public final LinearLayout effectItemList;
    public final AudioEffectHeaderViewBinding header;
    public final AudioEffectBoxView root;

    public AudioEffectBoxViewBinding(View view) {
        AudioEffectBoxView audioEffectBoxView = (AudioEffectBoxView) view.findViewById(R.id.soundcraft_audio_effect_box);
        this.root = audioEffectBoxView;
        this.header = new AudioEffectHeaderViewBinding(audioEffectBoxView);
        this.effectItemList = (LinearLayout) audioEffectBoxView.findViewById(R.id.soundcraft_audio_effect_item_list);
    }
}
