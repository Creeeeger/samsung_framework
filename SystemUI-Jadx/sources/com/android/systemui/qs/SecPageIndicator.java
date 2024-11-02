package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.systemui.R;
import com.android.systemui.qs.SecDarkModeEasel;
import com.android.systemui.qs.SecPageIndicator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecPageIndicator extends PageIndicator {
    public SecPageIndicatorCallback mCallback;
    public final SecDarkModeEasel mDarkModelEasel;
    public final LayoutInflater mInflater;
    public int mNumPages;
    public int mPosition;
    public float mQsExpansion;
    public int mSelectedColor;
    public int mSelectedColorResId;
    public int mUnselectedColor;
    public int mUnselectedColorResId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SecPageIndicatorCallback {
        void setViewPageToSelected(int i);
    }

    public SecPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNumPages = -1;
        this.mPosition = -1;
        this.mSelectedColorResId = -1;
        this.mUnselectedColorResId = -1;
        this.mDarkModelEasel = new SecDarkModeEasel(new SecDarkModeEasel.PictureSubject() { // from class: com.android.systemui.qs.SecPageIndicator$$ExternalSyntheticLambda1
            @Override // com.android.systemui.qs.SecDarkModeEasel.PictureSubject
            public final void drawDarkModelPicture() {
                SecPageIndicator.this.onPanelModeChanged();
            }
        });
        Resources resources = ((LinearLayout) this).mContext.getResources();
        this.mSelectedColor = resources.getColor(R.color.qs_page_indicator_tint_color_selected);
        this.mUnselectedColor = resources.getColor(R.color.sec_qs_page_indicator_tint_color_unselected);
        this.mInflater = (LayoutInflater) ((LinearLayout) this).mContext.getSystemService("layout_inflater");
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDarkModelEasel.updateColors(configuration);
    }

    public final void onPanelModeChanged() {
        if (this.mSelectedColorResId != -1 && this.mUnselectedColorResId != -1) {
            Resources resources = ((LinearLayout) this).mContext.getResources();
            int color = resources.getColor(this.mSelectedColorResId);
            int color2 = resources.getColor(this.mUnselectedColorResId);
            this.mSelectedColor = color;
            this.mUnselectedColor = color2;
            setNumPages(this.mNumPages);
            setPosition(this.mPosition);
        }
    }

    public final void playAnimation(ImageView imageView, boolean z, boolean z2) {
        String string;
        if (imageView == null) {
            return;
        }
        Drawable background = imageView.getBackground();
        if (background instanceof TransitionDrawable) {
            TransitionDrawable transitionDrawable = (TransitionDrawable) background;
            if (z) {
                transitionDrawable.startTransition(150);
                string = ((LinearLayout) this).mContext.getString(R.string.accessibility_quick_settings_selected);
            } else {
                if (z2) {
                    transitionDrawable.resetTransition();
                } else {
                    transitionDrawable.reverseTransition(150);
                }
                string = ((LinearLayout) this).mContext.getString(R.string.accessibility_quick_settings_not_selected);
            }
            ViewParent parent = imageView.getParent();
            if (parent instanceof LinearLayout) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(string, ", ");
                m.append(((LinearLayout) this).mContext.getString(R.string.accessibility_quick_settings_page, Integer.valueOf(imageView.getId() + 1), Integer.valueOf(this.mNumPages)));
                ((LinearLayout) parent).setContentDescription(m.toString());
            }
        }
    }

    public final void reset(int i) {
        boolean z;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = ((LinearLayout) getChildAt(i2)).getChildAt(0);
            if (childAt instanceof ImageView) {
                ImageView imageView = (ImageView) childAt;
                if (i2 == i) {
                    z = true;
                } else {
                    z = false;
                }
                playAnimation(imageView, z, true);
            }
        }
        this.mPosition = i;
    }

    @Override // com.android.systemui.qs.PageIndicator
    public final void setLocation(float f) {
        int round = Math.round(f);
        if (getLayoutDirection() == 1) {
            round = (this.mNumPages - 1) - round;
        }
        if (round == this.mPosition) {
            return;
        }
        setPosition(round);
    }

    @Override // com.android.systemui.qs.PageIndicator
    public final void setNumPages(int i) {
        int i2;
        if (i > 1) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        setVisibility(i2);
        this.mNumPages = i;
        while (getChildAt(0) != null) {
            removeViewAt(0);
        }
        for (final int i3 = 0; i3 < i; i3++) {
            LinearLayout linearLayout = (LinearLayout) this.mInflater.inflate(R.layout.page_indicator_contents, (ViewGroup) this, false);
            Drawable[] drawableArr = {getContext().getDrawable(R.drawable.qs_page_indicator_unselected), getContext().getDrawable(R.drawable.qs_page_indicator_selected)};
            drawableArr[0].setColorFilter(this.mUnselectedColor, PorterDuff.Mode.SRC_IN);
            drawableArr[1].setColorFilter(this.mSelectedColor, PorterDuff.Mode.SRC_IN);
            TransitionDrawable transitionDrawable = new TransitionDrawable(drawableArr);
            transitionDrawable.setCrossFadeEnabled(true);
            ((ImageView) linearLayout.findViewById(R.id.page_indicator_dot)).setBackground(transitionDrawable);
            linearLayout.findViewById(R.id.page_indicator_dot).setId(i3);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.SecPageIndicator$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SecPageIndicator secPageIndicator = SecPageIndicator.this;
                    int i4 = i3;
                    SecPageIndicator.SecPageIndicatorCallback secPageIndicatorCallback = secPageIndicator.mCallback;
                    if (secPageIndicatorCallback != null && secPageIndicator.mQsExpansion == 1.0f) {
                        secPageIndicatorCallback.setViewPageToSelected(i4);
                    }
                }
            });
            addView(linearLayout);
        }
        reset(0);
        requestLayout();
    }

    @Override // com.android.systemui.qs.PageIndicator
    public final void setPosition(int i) {
        if (isVisibleToUser() && Math.abs(this.mPosition - i) == 1) {
            int i2 = this.mPosition;
            if (getChildAt(i2) != null && getChildAt(i) != null) {
                View childAt = ((LinearLayout) getChildAt(i2)).getChildAt(0);
                View childAt2 = ((LinearLayout) getChildAt(i)).getChildAt(0);
                playAnimation((ImageView) childAt, false, false);
                playAnimation((ImageView) childAt2, true, false);
            }
        } else {
            reset(i);
        }
        this.mPosition = i;
    }

    public final void setSecIndicatorColorResId() {
        this.mSelectedColorResId = R.color.qs_media_page_indicator_tint_color_selected;
        this.mUnselectedColorResId = R.color.qs_media_page_indicator_tint_color_unselected;
        int color = ((LinearLayout) this).mContext.getResources().getColor(this.mSelectedColorResId);
        int color2 = ((LinearLayout) this).mContext.getResources().getColor(this.mUnselectedColorResId);
        this.mSelectedColor = color;
        this.mUnselectedColor = color2;
    }
}
