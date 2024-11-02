package com.android.systemui.common.ui.binder;

import android.widget.ImageView;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IconViewBinder {
    public static final IconViewBinder INSTANCE = new IconViewBinder();

    private IconViewBinder() {
    }

    public static void bind(Icon icon, ImageView imageView) {
        ContentDescriptionViewBinder contentDescriptionViewBinder = ContentDescriptionViewBinder.INSTANCE;
        ContentDescription contentDescription = icon.getContentDescription();
        contentDescriptionViewBinder.getClass();
        ContentDescriptionViewBinder.bind(contentDescription, imageView);
        if (icon instanceof Icon.Loaded) {
            imageView.setImageDrawable(((Icon.Loaded) icon).drawable);
        } else if (icon instanceof Icon.Resource) {
            imageView.setImageResource(((Icon.Resource) icon).res);
        }
    }
}
