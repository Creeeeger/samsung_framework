package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.view.actionbar.SoundCraftActionBarView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftActionBarBinding {
    public final View backButton;
    public final View backIcon;
    public final SoundCraftActionBarView root;
    public final TextView title;

    public SoundCraftActionBarBinding(View view) {
        this.root = (SoundCraftActionBarView) view.findViewById(R.id.action_bar);
        this.backButton = view.findViewById(R.id.action_arrow);
        this.backIcon = view.findViewById(R.id.iv_action_arrow);
        this.title = (TextView) view.findViewById(R.id.action_bar_text);
    }
}
