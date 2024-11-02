package com.android.systemui.statusbar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.android.systemui.animation.LaunchableView;
import com.android.systemui.animation.LaunchableViewDelegate;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AlphaOptimizedButton extends Button implements LaunchableView {
    public final LaunchableViewDelegate mDelegate;

    /* renamed from: $r8$lambda$QRtv8B4ZALXYDv4nUz-jA3Egms0, reason: not valid java name */
    public static /* synthetic */ Unit m1405$r8$lambda$QRtv8B4ZALXYDv4nUzjA3Egms0(AlphaOptimizedButton alphaOptimizedButton, Integer num) {
        alphaOptimizedButton.getClass();
        super.setVisibility(num.intValue());
        return Unit.INSTANCE;
    }

    public AlphaOptimizedButton(Context context) {
        super(context);
        final int i = 2;
        this.mDelegate = new LaunchableViewDelegate(this, new Function1(this) { // from class: com.android.systemui.statusbar.AlphaOptimizedButton$$ExternalSyntheticLambda0
            public final /* synthetic */ AlphaOptimizedButton f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                AlphaOptimizedButton alphaOptimizedButton = this.f$0;
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        return AlphaOptimizedButton.m1405$r8$lambda$QRtv8B4ZALXYDv4nUzjA3Egms0(alphaOptimizedButton, (Integer) obj);
                }
            }
        });
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.systemui.animation.LaunchableView
    public final void setShouldBlockVisibilityChanges(boolean z) {
        this.mDelegate.setShouldBlockVisibilityChanges(z);
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        this.mDelegate.setVisibility(i);
    }

    public AlphaOptimizedButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final int i = 1;
        this.mDelegate = new LaunchableViewDelegate(this, new Function1(this) { // from class: com.android.systemui.statusbar.AlphaOptimizedButton$$ExternalSyntheticLambda0
            public final /* synthetic */ AlphaOptimizedButton f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                AlphaOptimizedButton alphaOptimizedButton = this.f$0;
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        return AlphaOptimizedButton.m1405$r8$lambda$QRtv8B4ZALXYDv4nUzjA3Egms0(alphaOptimizedButton, (Integer) obj);
                }
            }
        });
    }

    public AlphaOptimizedButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        final int i2 = 0;
        this.mDelegate = new LaunchableViewDelegate(this, new Function1(this) { // from class: com.android.systemui.statusbar.AlphaOptimizedButton$$ExternalSyntheticLambda0
            public final /* synthetic */ AlphaOptimizedButton f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                AlphaOptimizedButton alphaOptimizedButton = this.f$0;
                switch (i22) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        return AlphaOptimizedButton.m1405$r8$lambda$QRtv8B4ZALXYDv4nUzjA3Egms0(alphaOptimizedButton, (Integer) obj);
                }
            }
        });
    }

    public AlphaOptimizedButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        final int i3 = 3;
        this.mDelegate = new LaunchableViewDelegate(this, new Function1(this) { // from class: com.android.systemui.statusbar.AlphaOptimizedButton$$ExternalSyntheticLambda0
            public final /* synthetic */ AlphaOptimizedButton f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i3;
                AlphaOptimizedButton alphaOptimizedButton = this.f$0;
                switch (i22) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        return AlphaOptimizedButton.m1405$r8$lambda$QRtv8B4ZALXYDv4nUzjA3Egms0(alphaOptimizedButton, (Integer) obj);
                }
            }
        });
    }
}
