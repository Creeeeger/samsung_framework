package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.systemui.R$styleable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecFgsManagerNoItemTextView extends TextView {
    public float currentFontScale;
    public float maxFontScale;
    public float originalTextSize;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecFgsManagerNoItemTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxFontScale = 1.3f;
        this.currentFontScale = 1.0f;
        init(context, attributeSet);
    }

    public final void init(Context context, AttributeSet attributeSet) {
        this.originalTextSize = getTextSize();
        this.maxFontScale = context.obtainStyledAttributes(attributeSet, R$styleable.QSTextView).getFloat(0, 1.3f);
        float f = context.getResources().getConfiguration().fontScale;
        float f2 = this.maxFontScale;
        if (f > f2) {
            f = f2;
        }
        if (Float.compare(this.currentFontScale, f) != 0) {
            this.currentFontScale = f;
            setTextSize(0, this.originalTextSize * f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        float f = configuration.fontScale;
        float f2 = this.maxFontScale;
        if (f > f2) {
            f = f2;
        }
        if (Float.compare(this.currentFontScale, f) != 0) {
            this.currentFontScale = f;
            setTextSize(0, this.originalTextSize * f);
        }
    }

    public SecFgsManagerNoItemTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.maxFontScale = 1.3f;
        this.currentFontScale = 1.0f;
        init(context, attributeSet);
    }
}
