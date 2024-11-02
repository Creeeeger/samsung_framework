package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectHeaderView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectHeaderViewBinding {
    public final ImageView icon;
    public final AudioEffectHeaderView root;
    public final TextView title;

    public AudioEffectHeaderViewBinding(View view) {
        AudioEffectHeaderView audioEffectHeaderView = (AudioEffectHeaderView) view.findViewById(R.id.soundcraft_audio_effect_header);
        this.root = audioEffectHeaderView;
        this.icon = (ImageView) audioEffectHeaderView.findViewById(R.id.effect_box_header_icon);
        this.title = (TextView) audioEffectHeaderView.findViewById(R.id.effect_box_header_title);
    }
}
