package androidx.cardview.widget;

import android.content.res.ColorStateList;
import androidx.cardview.widget.CardView;

/* loaded from: classes.dex */
final class CardViewApi21Impl {
    private static RoundRectDrawable getCardBackground(CardView.AnonymousClass1 anonymousClass1) {
        return (RoundRectDrawable) anonymousClass1.getCardBackground();
    }

    public final ColorStateList getBackgroundColor(CardViewDelegate cardViewDelegate) {
        return getCardBackground((CardView.AnonymousClass1) cardViewDelegate).getColor();
    }

    public final float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return getCardBackground((CardView.AnonymousClass1) cardViewDelegate).getPadding();
    }

    public final float getRadius(CardViewDelegate cardViewDelegate) {
        return getCardBackground((CardView.AnonymousClass1) cardViewDelegate).getRadius();
    }

    public final void setBackgroundColor(CardViewDelegate cardViewDelegate, ColorStateList colorStateList) {
        getCardBackground((CardView.AnonymousClass1) cardViewDelegate).setColor(colorStateList);
    }

    public final void setMaxElevation(CardViewDelegate cardViewDelegate, float f) {
        CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) cardViewDelegate;
        RoundRectDrawable cardBackground = getCardBackground(anonymousClass1);
        boolean useCompatPadding = CardView.this.getUseCompatPadding();
        CardView cardView = CardView.this;
        cardBackground.setPadding(f, useCompatPadding, cardView.getPreventCornerOverlap());
        if (!cardView.getUseCompatPadding()) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(anonymousClass1);
        float radius = getRadius(anonymousClass1);
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(maxElevation, radius, cardView.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(maxElevation, radius, cardView.getPreventCornerOverlap()));
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    public final void setRadius(CardViewDelegate cardViewDelegate, float f) {
        getCardBackground((CardView.AnonymousClass1) cardViewDelegate).setRadius(f);
    }
}
