package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.reflect.SeslBaseReflector;
import androidx.reflect.os.SeslBuildReflector$SeslVersionReflector;
import androidx.reflect.view.SeslSemWindowManagerReflector;
import androidx.reflect.view.SeslViewReflector;
import androidx.reflect.view.SeslViewRuneReflector;
import com.android.systemui.R;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppCompatPopupWindow extends PopupWindow {
    public static final boolean ONEUI_5_1_1;
    public static final int[] ONEUI_BLUR_POPUP_BACKGROUND_RES;
    public Context mContext;
    public boolean mHasNavigationBar;
    public boolean mIsReplacedPoupBackground;
    public int mNavigationBarHeight;
    public final Rect mTempRect;

    static {
        boolean z;
        if (SeslBuildReflector$SeslVersionReflector.getField_SEM_PLATFORM_INT() >= 140500) {
            z = true;
        } else {
            z = false;
        }
        ONEUI_5_1_1 = z;
        ONEUI_BLUR_POPUP_BACKGROUND_RES = new int[]{R.drawable.sesl_menu_popup_background, R.drawable.sesl_menu_popup_background_dark};
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        init(context, attributeSet, i, 0);
    }

    @Override // android.widget.PopupWindow
    public final int getMaxAvailableHeight(View view, int i, boolean z) {
        int i2;
        int height;
        Context context;
        DisplayManager displayManager;
        Display display;
        Activity activity;
        int i3;
        Rect rect = new Rect();
        if (z) {
            Method declaredMethod = SeslBaseReflector.getDeclaredMethod(SeslViewReflector.mClass, "getWindowDisplayFrame", Rect.class);
            if (declaredMethod != null) {
                SeslBaseReflector.invoke(view, declaredMethod, rect);
            }
            if (this.mHasNavigationBar && this.mContext.getResources().getConfiguration().orientation != 2) {
                rect.bottom -= this.mNavigationBarHeight;
            }
        } else {
            view.getWindowVisibleDisplayFrame(rect);
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i4 = 0;
        if (ONEUI_5_1_1 && (context = this.mContext) != null && (displayManager = (DisplayManager) context.getSystemService("display")) != null && (display = displayManager.getDisplay(0)) != null && SeslSemWindowManagerReflector.isTableMode()) {
            Context context2 = this.mContext;
            while (true) {
                if (context2 instanceof ContextWrapper) {
                    if (context2 instanceof Activity) {
                        activity = (Activity) context2;
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                } else {
                    activity = null;
                    break;
                }
            }
            if (activity == null || !activity.isInMultiWindowMode()) {
                Point point = new Point();
                display.getRealSize(point);
                if (SeslViewRuneReflector.supportFoldableDualDisplay()) {
                    if (this.mContext.getResources().getConfiguration().orientation == 2) {
                        int i5 = point.y;
                        int i6 = point.x;
                        if (i5 > i6) {
                            i4 = i6 / 2;
                        } else {
                            i3 = i5 / 2;
                            i4 = i3;
                        }
                    }
                } else if (SeslViewRuneReflector.supportFoldableNoSubDisplay() && this.mContext.getResources().getConfiguration().orientation == 1) {
                    int i7 = point.y;
                    int i8 = point.x;
                    if (i7 > i8) {
                        i3 = i7 / 2;
                        i4 = i3;
                    } else {
                        i4 = i8 / 2;
                    }
                }
            }
        }
        if (i4 != 0 && iArr[1] < i4) {
            i2 = i4;
        } else {
            i2 = rect.bottom;
        }
        if (getOverlapAnchor()) {
            height = iArr[1];
        } else {
            height = view.getHeight() + iArr[1];
        }
        int i9 = (i2 - height) - i;
        int i10 = iArr[1];
        if (i4 == 0 || i10 < i4) {
            i4 = rect.top;
        }
        int max = Math.max(i9, (i10 - i4) + i);
        if (getBackground() != null) {
            getBackground().getPadding(this.mTempRect);
            Rect rect2 = this.mTempRect;
            return max - (rect2.top + rect2.bottom);
        }
        return max;
    }

    public final Transition getTransition(int i) {
        Transition inflateTransition;
        boolean z;
        if (i != 0 && i != 17760256 && (inflateTransition = TransitionInflater.from(this.mContext).inflateTransition(i)) != null) {
            if ((inflateTransition instanceof TransitionSet) && ((TransitionSet) inflateTransition).getTransitionCount() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return inflateTransition;
            }
            return null;
        }
        return null;
    }

    public final void init(Context context, AttributeSet attributeSet, int i, int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.PopupWindow, i, i2);
        boolean z = false;
        if (obtainStyledAttributes.hasValue(2)) {
            setOverlapAnchor(obtainStyledAttributes.getBoolean(2, false));
        }
        this.mContext = context;
        Transition transition = getTransition(obtainStyledAttributes.getResourceId(3, 0));
        Transition transition2 = getTransition(obtainStyledAttributes.getResourceId(4, 0));
        setEnterTransition(transition);
        setExitTransition(transition2);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        boolean z2 = false;
        for (int i3 : ONEUI_BLUR_POPUP_BACKGROUND_RES) {
            if (i3 == resourceId) {
                z2 = true;
            }
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
        this.mIsReplacedPoupBackground = !z2;
        obtainStyledAttributes.recycle();
        if (!ViewConfiguration.get(ActionBarPolicy.get(context).mContext).hasPermanentMenuKey() && !KeyCharacterMap.deviceHasKey(4)) {
            z = true;
        }
        this.mHasNavigationBar = z;
        this.mNavigationBarHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.sesl_navigation_bar_height);
    }

    @Override // android.widget.PopupWindow
    public final void setBackgroundDrawable(Drawable drawable) {
        this.mIsReplacedPoupBackground = true;
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i, int i2) {
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public final void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i, int i2, int i3) {
        super.showAsDropDown(view, i, i2, i3);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTempRect = new Rect();
        init(context, attributeSet, i, i2);
    }
}
