package androidx.cardview.widget;

import androidx.cardview.widget.CardView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CardViewApi21Impl {
    public final void updatePadding(CardView.AnonymousClass1 anonymousClass1) {
        float f;
        CardView cardView = CardView.this;
        if (!cardView.mCompatPadding) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.mCardBackground;
        float f2 = roundRectDrawable.mPadding;
        float f3 = roundRectDrawable.mRadius;
        if (cardView.mPreventCornerOverlap) {
            f = (float) (((1.0d - RoundRectDrawableWithShadow.COS_45) * f3) + f2);
        } else {
            int i = RoundRectDrawableWithShadow.$r8$clinit;
            f = f2;
        }
        int ceil = (int) Math.ceil(f);
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(f2, f3, CardView.this.mPreventCornerOverlap));
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }
}
