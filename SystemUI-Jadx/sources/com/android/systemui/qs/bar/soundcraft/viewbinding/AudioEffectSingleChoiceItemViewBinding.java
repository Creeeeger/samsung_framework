package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectSingleChoiceItemViewBinding {
    public final ImageView icon;
    public final TextView name;
    public final LinearLayout root;
    public final TextView status;

    public AudioEffectSingleChoiceItemViewBinding(View view) {
        this.root = (LinearLayout) view.findViewById(R.id.item_root);
        this.icon = (ImageView) view.findViewById(R.id.item_icon);
        this.name = (TextView) view.findViewById(R.id.item_name);
        this.status = (TextView) view.findViewById(R.id.item_status);
    }
}
