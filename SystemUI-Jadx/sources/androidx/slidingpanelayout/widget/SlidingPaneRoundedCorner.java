package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.util.SeslMisc;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SlidingPaneRoundedCorner {
    public final Context mContext;
    public Drawable mEndBottomDrawable;
    public Drawable mEndTopDrawable;
    public final Resources mRes;
    public int mRoundedCornerMode;
    public Drawable mStartBottomDrawable;
    public Drawable mStartTopDrawable;
    public int mRoundRadius = -1;
    public final Rect mRoundedCornerBounds = new Rect();
    public int mMarginTop = 0;
    public int mMarginBottom = 0;
    public final Rect mTmpRect = new Rect();

    public SlidingPaneRoundedCorner(Context context) {
        this.mContext = context;
        this.mRes = context.getResources();
        initRoundedCorner();
    }

    public final void initRoundedCorner() {
        Resources resources = this.mRes;
        this.mRoundRadius = (int) TypedValue.applyDimension(1, 16.0f, resources.getDisplayMetrics());
        Context context = this.mContext;
        boolean isLightTheme = true ^ SeslMisc.isLightTheme(context);
        Resources.Theme theme = context.getTheme();
        this.mStartTopDrawable = resources.getDrawable(R.drawable.sesl_top_right_round, theme);
        this.mStartBottomDrawable = resources.getDrawable(R.drawable.sesl_bottom_right_round, theme);
        this.mEndTopDrawable = resources.getDrawable(R.drawable.sesl_top_left_round, theme);
        this.mEndBottomDrawable = resources.getDrawable(R.drawable.sesl_bottom_left_round, theme);
        if (isLightTheme) {
            resources.getColor(R.color.sesl_round_and_bgcolor_dark, null);
        } else {
            resources.getColor(R.color.sesl_round_and_bgcolor_light, null);
        }
    }
}
