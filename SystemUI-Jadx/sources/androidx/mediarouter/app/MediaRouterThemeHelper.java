package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouterThemeHelper {
    private MediaRouterThemeHelper() {
    }

    public static Context createThemedDialogContext(Context context, int i, boolean z) {
        int i2;
        if (i == 0) {
            if (!z) {
                i2 = R.attr.dialogTheme;
            } else {
                i2 = R.attr.alertDialogTheme;
            }
            i = getThemeResource(i2, context);
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (getThemeResource(R.attr.mediaRouteTheme, contextThemeWrapper) != 0) {
            return new ContextThemeWrapper(contextThemeWrapper, getRouterThemeId(contextThemeWrapper));
        }
        return contextThemeWrapper;
    }

    public static int createThemedDialogStyle(Context context) {
        int themeResource = getThemeResource(R.attr.mediaRouteTheme, context);
        if (themeResource == 0) {
            return getRouterThemeId(context);
        }
        return themeResource;
    }

    public static int getControllerColor(int i, Context context) {
        if (ColorUtils.calculateContrast(-1, getThemeColor(i, context, R.attr.colorPrimary)) >= 3.0d) {
            return -1;
        }
        return -570425344;
    }

    public static float getDisabledAlpha(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValue, true)) {
            return typedValue.getFloat();
        }
        return 0.5f;
    }

    public static Drawable getIconByAttrId(int i, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        Drawable drawable = AppCompatResources.getDrawable(obtainStyledAttributes.getResourceId(0, 0), context);
        if (isLightTheme(context)) {
            Object obj = ContextCompat.sLock;
            drawable.setTint(context.getColor(R.color.mr_dynamic_dialog_icon_light));
        }
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static int getRouterThemeId(Context context) {
        if (isLightTheme(context)) {
            if (getControllerColor(0, context) == -570425344) {
                return 2132018504;
            }
            return 2132018505;
        }
        if (getControllerColor(0, context) == -570425344) {
            return 2132018506;
        }
        return 2132018503;
    }

    public static int getThemeColor(int i, Context context, int i2) {
        if (i != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
            int color = obtainStyledAttributes.getColor(0, 0);
            obtainStyledAttributes.recycle();
            if (color != 0) {
                return color;
            }
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        if (typedValue.resourceId != 0) {
            return context.getResources().getColor(typedValue.resourceId);
        }
        return typedValue.data;
    }

    public static int getThemeResource(int i, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static boolean isLightTheme(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true) && typedValue.data != 0) {
            return true;
        }
        return false;
    }

    public static void setDialogBackgroundColor(Context context, Dialog dialog) {
        int i;
        View decorView = dialog.getWindow().getDecorView();
        if (isLightTheme(context)) {
            i = R.color.mr_dynamic_dialog_background_light;
        } else {
            i = R.color.mr_dynamic_dialog_background_dark;
        }
        Object obj = ContextCompat.sLock;
        decorView.setBackgroundColor(context.getColor(i));
    }

    public static void setIndeterminateProgressBarColor(Context context, ProgressBar progressBar) {
        int i;
        if (!progressBar.isIndeterminate()) {
            return;
        }
        if (isLightTheme(context)) {
            i = R.color.mr_cast_progressbar_progress_and_thumb_light;
        } else {
            i = R.color.mr_cast_progressbar_progress_and_thumb_dark;
        }
        Object obj = ContextCompat.sLock;
        progressBar.getIndeterminateDrawable().setColorFilter(context.getColor(i), PorterDuff.Mode.SRC_IN);
    }

    public static void setVolumeSliderColor(Context context, MediaRouteVolumeSlider mediaRouteVolumeSlider, View view) {
        int controllerColor = getControllerColor(0, context);
        if (Color.alpha(controllerColor) != 255) {
            controllerColor = ColorUtils.compositeColors(controllerColor, ((Integer) view.getTag()).intValue());
        }
        mediaRouteVolumeSlider.setColor(controllerColor, controllerColor);
    }
}
