package androidx.picker.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.picker.widget.SeslColorSwatchView;
import com.android.systemui.R;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslColorPicker extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public SeslColorSwatchView mColorSwatchView;
    public final Context mContext;
    public View mCurrentColorContainer;
    public ImageView mCurrentColorView;
    public final float mCurrentFontScale;
    public final AnonymousClass4 mImageButtonClickListener;
    public final boolean mIsLightTheme;
    public SeslOpacitySeekBar mOpacitySeekBar;
    public FrameLayout mOpacitySeekBarContainer;
    public final PickedColor mPickedColor;
    public View mPickedColorContainer;
    public ImageView mPickedColorView;
    public LinearLayout mRecentColorListLayout;
    public final ArrayList mRecentColorValues;
    public View mRecentlyDivider;
    public TextView mRecentlyText;
    public final Resources mResources;
    public GradientDrawable mSelectedColorBackground;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker.widget.SeslColorPicker$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PickedColor {
        public Integer mColor = null;
        public final float[] mHsv = new float[3];

        public final void setColor(int i) {
            Integer valueOf = Integer.valueOf(i);
            this.mColor = valueOf;
            Color.alpha(valueOf.intValue());
            Color.colorToHSV(this.mColor.intValue(), this.mHsv);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.picker.widget.SeslColorPicker$4] */
    public SeslColorPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int[] iArr = {320, 360, 411};
        this.mImageButtonClickListener = new View.OnClickListener() { // from class: androidx.picker.widget.SeslColorPicker.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int size = SeslColorPicker.this.mRecentColorValues.size();
                for (int i5 = 0; i5 < size && i5 < 6; i5++) {
                    if (SeslColorPicker.this.mRecentColorListLayout.getChildAt(i5).equals(view)) {
                        SeslColorPicker.this.getClass();
                        int intValue = ((Integer) SeslColorPicker.this.mRecentColorValues.get(i5)).intValue();
                        SeslColorPicker.this.mPickedColor.setColor(intValue);
                        SeslColorPicker.this.mapColorOnColorWheel(intValue);
                        SeslColorPicker.this.getClass();
                    }
                }
            }
        };
        this.mContext = context;
        Resources resources = getResources();
        this.mResources = resources;
        TypedValue typedValue = new TypedValue();
        boolean z2 = true;
        context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true);
        if (typedValue.data != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsLightTheme = z;
        this.mCurrentFontScale = resources.getConfiguration().fontScale;
        LayoutInflater.from(context).inflate(R.layout.sesl_color_picker_layout, this);
        this.mRecentColorValues = new SeslRecentColorInfo().mRecentColorInfo;
        this.mPickedColor = new PickedColor();
        if (resources.getConfiguration().orientation == 1) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            float f = displayMetrics.density;
            if (f % 1.0f != 0.0f) {
                float f2 = displayMetrics.widthPixels;
                int i5 = (int) (f2 / f);
                int i6 = 0;
                while (true) {
                    if (i6 < 3) {
                        if (iArr[i6] == i5) {
                            break;
                        } else {
                            i6++;
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.sesl_color_picker_seekbar_width);
                    if (f2 < (this.mResources.getDimensionPixelSize(R.dimen.sesl_color_picker_dialog_padding_left) * 2) + dimensionPixelSize) {
                        int i7 = (int) ((f2 - dimensionPixelSize) / 2.0f);
                        ((LinearLayout) findViewById(R.id.sesl_color_picker_main_content_container)).setPadding(i7, this.mResources.getDimensionPixelSize(R.dimen.sesl_color_picker_dialog_padding_top), i7, this.mResources.getDimensionPixelSize(R.dimen.sesl_color_picker_dialog_padding_bottom));
                    }
                }
            }
        }
        this.mCurrentColorView = (ImageView) findViewById(R.id.sesl_color_picker_current_color_view);
        this.mPickedColorView = (ImageView) findViewById(R.id.sesl_color_picker_picked_color_view);
        Resources resources2 = this.mResources;
        if (this.mIsLightTheme) {
            i = R.color.sesl_color_picker_selected_color_item_text_color_light;
        } else {
            i = R.color.sesl_color_picker_selected_color_item_text_color_dark;
        }
        int color = resources2.getColor(i);
        TextView textView = (TextView) findViewById(R.id.sesl_color_picker_current_color_text);
        textView.setTextColor(color);
        TextView textView2 = (TextView) findViewById(R.id.sesl_color_picker_picked_color_text);
        textView2.setTextColor(color);
        if (this.mCurrentFontScale > 1.2f) {
            float dimensionPixelOffset = this.mResources.getDimensionPixelOffset(R.dimen.sesl_color_picker_selected_color_text_size);
            textView.setTextSize(0, (float) Math.floor(Math.ceil(dimensionPixelOffset / this.mCurrentFontScale) * 1.2000000476837158d));
            textView2.setTextSize(0, (float) Math.floor(Math.ceil(dimensionPixelOffset / this.mCurrentFontScale) * 1.2000000476837158d));
        }
        this.mCurrentColorContainer = findViewById(R.id.sesl_color_picker_current_color_focus);
        this.mPickedColorContainer = findViewById(R.id.sesl_color_picker_picked_color_focus);
        GradientDrawable gradientDrawable = (GradientDrawable) this.mPickedColorView.getBackground();
        this.mSelectedColorBackground = gradientDrawable;
        Integer num = this.mPickedColor.mColor;
        if (num != null) {
            gradientDrawable.setColor(num.intValue());
        }
        SeslColorSwatchView seslColorSwatchView = (SeslColorSwatchView) findViewById(R.id.sesl_color_picker_color_swatch_view);
        this.mColorSwatchView = seslColorSwatchView;
        seslColorSwatchView.mListener = new AnonymousClass1();
        this.mOpacitySeekBar = (SeslOpacitySeekBar) findViewById(R.id.sesl_color_picker_opacity_seekbar);
        this.mOpacitySeekBarContainer = (FrameLayout) findViewById(R.id.sesl_color_picker_opacity_seekbar_container);
        this.mOpacitySeekBar.setVisibility(8);
        this.mOpacitySeekBarContainer.setVisibility(8);
        SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
        Integer num2 = this.mPickedColor.mColor;
        seslOpacitySeekBar.setMax(255);
        if (num2 != null) {
            seslOpacitySeekBar.initColor(num2.intValue());
        }
        GradientDrawable gradientDrawable2 = (GradientDrawable) seslOpacitySeekBar.getContext().getDrawable(R.drawable.sesl_color_picker_opacity_seekbar);
        seslOpacitySeekBar.mProgressDrawable = gradientDrawable2;
        seslOpacitySeekBar.setProgressDrawable(gradientDrawable2);
        seslOpacitySeekBar.setThumb(seslOpacitySeekBar.getContext().getResources().getDrawable(R.drawable.sesl_color_picker_seekbar_cursor));
        seslOpacitySeekBar.setThumbOffset(0);
        this.mOpacitySeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: androidx.picker.widget.SeslColorPicker.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i8, boolean z3) {
                if (z3) {
                    SeslColorPicker seslColorPicker = SeslColorPicker.this;
                    int i9 = SeslColorPicker.$r8$clinit;
                    seslColorPicker.getClass();
                }
                PickedColor pickedColor = SeslColorPicker.this.mPickedColor;
                pickedColor.getClass();
                pickedColor.mColor = Integer.valueOf(Color.HSVToColor(i8, pickedColor.mHsv));
                SeslColorPicker seslColorPicker2 = SeslColorPicker.this;
                Integer num3 = seslColorPicker2.mPickedColor.mColor;
                if (num3 != null) {
                    GradientDrawable gradientDrawable3 = seslColorPicker2.mSelectedColorBackground;
                    if (gradientDrawable3 != null) {
                        gradientDrawable3.setColor(num3.intValue());
                    }
                    SeslColorPicker.this.getClass();
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.mOpacitySeekBar.setOnTouchListener(new View.OnTouchListener(this) { // from class: androidx.picker.widget.SeslColorPicker.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                return true;
            }
        });
        this.mOpacitySeekBarContainer.setContentDescription(this.mResources.getString(R.string.sesl_color_picker_opacity) + ", " + this.mResources.getString(R.string.sesl_color_picker_slider) + ", " + this.mResources.getString(R.string.sesl_color_picker_double_tap_to_select));
        this.mRecentColorListLayout = (LinearLayout) findViewById(R.id.sesl_color_picker_used_color_item_list_layout);
        this.mRecentlyText = (TextView) findViewById(R.id.sesl_color_picker_used_color_divider_text);
        this.mRecentlyDivider = findViewById(R.id.sesl_color_picker_recently_divider);
        this.mResources.getString(R.string.sesl_color_picker_color_one);
        this.mResources.getString(R.string.sesl_color_picker_color_two);
        this.mResources.getString(R.string.sesl_color_picker_color_three);
        this.mResources.getString(R.string.sesl_color_picker_color_four);
        this.mResources.getString(R.string.sesl_color_picker_color_five);
        this.mResources.getString(R.string.sesl_color_picker_color_six);
        Context context2 = this.mContext;
        if (this.mIsLightTheme) {
            i2 = R.color.sesl_color_picker_used_color_item_empty_slot_color_light;
        } else {
            i2 = R.color.sesl_color_picker_used_color_item_empty_slot_color_dark;
        }
        Object obj = ContextCompat.sLock;
        int color2 = context2.getColor(i2);
        for (int i8 = 0; i8 < 6; i8++) {
            View childAt = this.mRecentColorListLayout.getChildAt(i8);
            Integer valueOf = Integer.valueOf(color2);
            Context context3 = this.mContext;
            if (this.mIsLightTheme) {
                i4 = R.drawable.sesl_color_picker_used_color_item_slot_light;
            } else {
                i4 = R.drawable.sesl_color_picker_used_color_item_slot_dark;
            }
            GradientDrawable gradientDrawable3 = (GradientDrawable) context3.getDrawable(i4);
            if (valueOf != null) {
                gradientDrawable3.setColor(valueOf.intValue());
            }
            childAt.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{Color.argb(61, 0, 0, 0)}), gradientDrawable3, null));
            childAt.setOnClickListener(this.mImageButtonClickListener);
            childAt.setFocusable(false);
            childAt.setClickable(false);
        }
        if (this.mCurrentFontScale > 1.2f) {
            this.mRecentlyText.setTextSize(0, (float) Math.floor(Math.ceil(this.mResources.getDimensionPixelOffset(R.dimen.sesl_color_picker_selected_color_text_size) / this.mCurrentFontScale) * 1.2000000476837158d));
        }
        Context context4 = this.mContext;
        if (this.mIsLightTheme) {
            i3 = R.color.sesl_color_picker_used_color_text_color_light;
        } else {
            i3 = R.color.sesl_color_picker_used_color_text_color_dark;
        }
        int color3 = context4.getColor(i3);
        this.mRecentlyText.setTextColor(color3);
        this.mRecentlyDivider.getBackground().setTint(color3);
        updateCurrentColor();
        Integer num3 = this.mPickedColor.mColor;
        if (num3 != null) {
            mapColorOnColorWheel(num3.intValue());
        }
    }

    public final void mapColorOnColorWheel(int i) {
        this.mPickedColor.setColor(i);
        SeslColorSwatchView seslColorSwatchView = this.mColorSwatchView;
        if (seslColorSwatchView != null) {
            Point cursorIndexAt = seslColorSwatchView.getCursorIndexAt(i);
            if (seslColorSwatchView.mFromUser) {
                seslColorSwatchView.mCursorIndex.set(cursorIndexAt.x, cursorIndexAt.y);
            }
            if (seslColorSwatchView.mFromUser) {
                seslColorSwatchView.setCursorRect(seslColorSwatchView.mCursorRect);
                seslColorSwatchView.invalidate();
                Point point = seslColorSwatchView.mCursorIndex;
                seslColorSwatchView.mSelectedVirtualViewId = (point.y * 11) + point.x;
            } else {
                seslColorSwatchView.mSelectedVirtualViewId = -1;
            }
        }
        SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
        if (seslOpacitySeekBar != null) {
            seslOpacitySeekBar.initColor(i);
            seslOpacitySeekBar.mProgressDrawable.setColors(seslOpacitySeekBar.mColors);
            seslOpacitySeekBar.setProgressDrawable(seslOpacitySeekBar.mProgressDrawable);
        }
        GradientDrawable gradientDrawable = this.mSelectedColorBackground;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
            setCurrentColorViewDescription(i);
        }
    }

    public final void setCurrentColorViewDescription(int i) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        SeslColorSwatchView seslColorSwatchView = this.mColorSwatchView;
        if (seslColorSwatchView != null) {
            Point cursorIndexAt = seslColorSwatchView.getCursorIndexAt(i);
            if (seslColorSwatchView.mFromUser) {
                StringBuilder[][] sbArr = seslColorSwatchView.mColorSwatchDescription;
                int i2 = cursorIndexAt.x;
                StringBuilder[] sbArr2 = sbArr[i2];
                int i3 = cursorIndexAt.y;
                sb3 = sbArr2[i3];
                if (sb3 == null) {
                    int i4 = SeslColorSwatchView.SeslColorSwatchViewTouchHelper.$r8$clinit;
                    sb = seslColorSwatchView.mTouchHelper.getItemDescription((i3 * 11) + i2);
                }
            } else {
                sb = null;
            }
            sb3 = sb;
        }
        if (sb3 != null) {
            sb2.append(", ");
            sb2.append((CharSequence) sb3);
        }
        sb2.insert(0, this.mResources.getString(R.string.sesl_color_picker_new));
        this.mPickedColorContainer.setContentDescription(sb2);
    }

    public final void updateCurrentColor() {
        Integer num = this.mPickedColor.mColor;
        if (num != null) {
            SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
            if (seslOpacitySeekBar != null) {
                int intValue = num.intValue();
                GradientDrawable gradientDrawable = seslOpacitySeekBar.mProgressDrawable;
                if (gradientDrawable != null) {
                    int[] iArr = seslOpacitySeekBar.mColors;
                    iArr[1] = intValue;
                    gradientDrawable.setColors(iArr);
                    seslOpacitySeekBar.setProgressDrawable(seslOpacitySeekBar.mProgressDrawable);
                    seslOpacitySeekBar.setProgress(seslOpacitySeekBar.getMax());
                }
            }
            GradientDrawable gradientDrawable2 = this.mSelectedColorBackground;
            if (gradientDrawable2 != null) {
                gradientDrawable2.setColor(num.intValue());
                setCurrentColorViewDescription(num.intValue());
            }
        }
    }
}
