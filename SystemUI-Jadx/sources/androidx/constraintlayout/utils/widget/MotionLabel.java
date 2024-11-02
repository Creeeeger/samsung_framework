package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.FloatLayout;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.systemui.splugins.volume.VolumePanelValues;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MotionLabel extends View implements FloatLayout {
    public boolean mAutoSize;
    public int mAutoSizeTextType;
    public float mBackgroundPanX;
    public float mBackgroundPanY;
    public float mBaseTextSize;
    public float mDeltaLeft;
    public float mFloatHeight;
    public float mFloatWidth;
    public String mFontFamily;
    public int mGravity;
    public boolean mNotBuilt;
    public Matrix mOutlinePositionMatrix;
    public int mPaddingBottom;
    public int mPaddingLeft;
    public int mPaddingRight;
    public int mPaddingTop;
    public final TextPaint mPaint;
    public Path mPath;
    public RectF mRect;
    public float mRotate;
    public float mRound;
    public float mRoundPercent;
    public int mStyleIndex;
    public Paint mTempPaint;
    public Rect mTempRect;
    public String mText;
    public Drawable mTextBackground;
    public Bitmap mTextBackgroundBitmap;
    public final Rect mTextBounds;
    public int mTextFillColor;
    public int mTextOutlineColor;
    public float mTextOutlineThickness;
    public float mTextPanX;
    public float mTextPanY;
    public BitmapShader mTextShader;
    public Matrix mTextShaderMatrix;
    public float mTextSize;
    public int mTextureEffect;
    public float mTextureHeight;
    public float mTextureWidth;
    public int mTypefaceIndex;
    public boolean mUseOutline;
    public ViewOutlineProvider mViewOutlineProvider;
    public float mZoom;
    public final Paint paintCache;
    public float paintTextSize;

    public MotionLabel(Context context) {
        super(context);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mTextOutlineColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = "Hello World";
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, null);
    }

    public final void adjustTexture(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        if (this.mTextShaderMatrix == null) {
            return;
        }
        this.mFloatWidth = f3 - f;
        this.mFloatHeight = f4 - f2;
        float f11 = 0.0f;
        if (Float.isNaN(this.mBackgroundPanX)) {
            f5 = 0.0f;
        } else {
            f5 = this.mBackgroundPanX;
        }
        if (Float.isNaN(this.mBackgroundPanY)) {
            f6 = 0.0f;
        } else {
            f6 = this.mBackgroundPanY;
        }
        if (Float.isNaN(this.mZoom)) {
            f7 = 1.0f;
        } else {
            f7 = this.mZoom;
        }
        if (!Float.isNaN(this.mRotate)) {
            f11 = this.mRotate;
        }
        this.mTextShaderMatrix.reset();
        float width = this.mTextBackgroundBitmap.getWidth();
        float height = this.mTextBackgroundBitmap.getHeight();
        if (Float.isNaN(this.mTextureWidth)) {
            f8 = this.mFloatWidth;
        } else {
            f8 = this.mTextureWidth;
        }
        if (Float.isNaN(this.mTextureHeight)) {
            f9 = this.mFloatHeight;
        } else {
            f9 = this.mTextureHeight;
        }
        if (width * f9 < height * f8) {
            f10 = f8 / width;
        } else {
            f10 = f9 / height;
        }
        float f12 = f7 * f10;
        this.mTextShaderMatrix.postScale(f12, f12);
        float f13 = width * f12;
        float f14 = f8 - f13;
        float f15 = f12 * height;
        float f16 = f9 - f15;
        if (!Float.isNaN(this.mTextureHeight)) {
            f16 = this.mTextureHeight / 2.0f;
        }
        if (!Float.isNaN(this.mTextureWidth)) {
            f14 = this.mTextureWidth / 2.0f;
        }
        this.mTextShaderMatrix.postTranslate((((f5 * f14) + f8) - f13) * 0.5f, (((f6 * f16) + f9) - f15) * 0.5f);
        this.mTextShaderMatrix.postRotate(f11, f8 / 2.0f, f9 / 2.0f);
        this.mTextShader.setLocalMatrix(this.mTextShaderMatrix);
    }

    public final void buildShape(float f) {
        if (!this.mUseOutline && f == 1.0f) {
            return;
        }
        this.mPath.reset();
        String str = this.mText;
        int length = str.length();
        this.mPaint.getTextBounds(str, 0, length, this.mTextBounds);
        this.mPaint.getTextPath(str, 0, length, 0.0f, 0.0f, this.mPath);
        if (f != 1.0f) {
            Debug.getLoc();
            Matrix matrix = new Matrix();
            matrix.postScale(f, f);
            this.mPath.transform(matrix);
        }
        Rect rect = this.mTextBounds;
        rect.right--;
        rect.left++;
        rect.bottom++;
        rect.top--;
        RectF rectF = new RectF();
        rectF.bottom = getHeight();
        rectF.right = getWidth();
        this.mNotBuilt = false;
    }

    public final float getHorizontalOffset() {
        float f;
        float f2;
        if (Float.isNaN(this.mBaseTextSize)) {
            f = 1.0f;
        } else {
            f = this.mTextSize / this.mBaseTextSize;
        }
        TextPaint textPaint = this.mPaint;
        String str = this.mText;
        float measureText = textPaint.measureText(str, 0, str.length()) * f;
        if (Float.isNaN(this.mFloatWidth)) {
            f2 = getMeasuredWidth();
        } else {
            f2 = this.mFloatWidth;
        }
        return ((this.mTextPanX + 1.0f) * (((f2 - getPaddingLeft()) - getPaddingRight()) - measureText)) / 2.0f;
    }

    public final float getVerticalOffset() {
        float f;
        float f2;
        if (Float.isNaN(this.mBaseTextSize)) {
            f = 1.0f;
        } else {
            f = this.mTextSize / this.mBaseTextSize;
        }
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        if (Float.isNaN(this.mFloatHeight)) {
            f2 = getMeasuredHeight();
        } else {
            f2 = this.mFloatHeight;
        }
        float paddingTop = (f2 - getPaddingTop()) - getPaddingBottom();
        float f3 = fontMetrics.descent;
        float f4 = fontMetrics.ascent;
        return (((1.0f - this.mTextPanY) * (paddingTop - ((f3 - f4) * f))) / 2.0f) - (f * f4);
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x038c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init(android.content.Context r17, android.util.AttributeSet r18) {
        /*
            Method dump skipped, instructions count: 929
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.utils.widget.MotionLabel.init(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        boolean isNaN = Float.isNaN(this.mBaseTextSize);
        float f = isNaN ? 1.0f : this.mTextSize / this.mBaseTextSize;
        this.mFloatWidth = i3 - i;
        this.mFloatHeight = i4 - i2;
        if (this.mAutoSize) {
            if (this.mTempRect == null) {
                this.mTempPaint = new Paint();
                this.mTempRect = new Rect();
                this.mTempPaint.set(this.mPaint);
                this.paintTextSize = this.mTempPaint.getTextSize();
            }
            Paint paint = this.mTempPaint;
            String str = this.mText;
            paint.getTextBounds(str, 0, str.length(), this.mTempRect);
            int width = this.mTempRect.width();
            int height = (int) (this.mTempRect.height() * 1.3f);
            float f2 = (this.mFloatWidth - this.mPaddingRight) - this.mPaddingLeft;
            float f3 = (this.mFloatHeight - this.mPaddingBottom) - this.mPaddingTop;
            if (isNaN) {
                float f4 = width;
                float f5 = height;
                if (f4 * f3 > f5 * f2) {
                    this.mPaint.setTextSize((this.paintTextSize * f2) / f4);
                } else {
                    this.mPaint.setTextSize((this.paintTextSize * f3) / f5);
                }
            } else {
                float f6 = width;
                float f7 = height;
                f = f6 * f3 > f7 * f2 ? f2 / f6 : f3 / f7;
            }
        }
        if (this.mUseOutline || !isNaN) {
            adjustTexture(i, i2, i3, i4);
            buildShape(f);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        if (Float.isNaN(this.mBaseTextSize)) {
            f = 1.0f;
        } else {
            f = this.mTextSize / this.mBaseTextSize;
        }
        super.onDraw(canvas);
        if (!this.mUseOutline && f == 1.0f) {
            canvas.drawText(this.mText, this.mDeltaLeft + getHorizontalOffset() + this.mPaddingLeft, getVerticalOffset() + this.mPaddingTop, this.mPaint);
            return;
        }
        if (this.mNotBuilt) {
            buildShape(f);
        }
        if (this.mOutlinePositionMatrix == null) {
            this.mOutlinePositionMatrix = new Matrix();
        }
        if (this.mUseOutline) {
            this.paintCache.set(this.mPaint);
            this.mOutlinePositionMatrix.reset();
            float horizontalOffset = getHorizontalOffset() + this.mPaddingLeft;
            float verticalOffset = getVerticalOffset() + this.mPaddingTop;
            this.mOutlinePositionMatrix.postTranslate(horizontalOffset, verticalOffset);
            this.mOutlinePositionMatrix.preScale(f, f);
            this.mPath.transform(this.mOutlinePositionMatrix);
            if (this.mTextShader != null) {
                this.mPaint.setFilterBitmap(true);
                this.mPaint.setShader(this.mTextShader);
            } else {
                this.mPaint.setColor(this.mTextFillColor);
            }
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
            canvas.drawPath(this.mPath, this.mPaint);
            if (this.mTextShader != null) {
                this.mPaint.setShader(null);
            }
            this.mPaint.setColor(this.mTextOutlineColor);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
            canvas.drawPath(this.mPath, this.mPaint);
            this.mOutlinePositionMatrix.reset();
            this.mOutlinePositionMatrix.postTranslate(-horizontalOffset, -verticalOffset);
            this.mPath.transform(this.mOutlinePositionMatrix);
            this.mPaint.set(this.paintCache);
            return;
        }
        float horizontalOffset2 = getHorizontalOffset() + this.mPaddingLeft;
        float verticalOffset2 = getVerticalOffset() + this.mPaddingTop;
        this.mOutlinePositionMatrix.reset();
        this.mOutlinePositionMatrix.preTranslate(horizontalOffset2, verticalOffset2);
        this.mPath.transform(this.mOutlinePositionMatrix);
        this.mPaint.setColor(this.mTextFillColor);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mPaint.setStrokeWidth(this.mTextOutlineThickness);
        canvas.drawPath(this.mPath, this.mPaint);
        this.mOutlinePositionMatrix.reset();
        this.mOutlinePositionMatrix.preTranslate(-horizontalOffset2, -verticalOffset2);
        this.mPath.transform(this.mOutlinePositionMatrix);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.mAutoSize = false;
        this.mPaddingLeft = getPaddingLeft();
        this.mPaddingRight = getPaddingRight();
        this.mPaddingTop = getPaddingTop();
        this.mPaddingBottom = getPaddingBottom();
        if (mode == 1073741824 && mode2 == 1073741824) {
            if (this.mAutoSizeTextType != 0) {
                this.mAutoSize = true;
            }
        } else {
            TextPaint textPaint = this.mPaint;
            String str = this.mText;
            textPaint.getTextBounds(str, 0, str.length(), this.mTextBounds);
            if (mode != 1073741824) {
                size = (int) (this.mTextBounds.width() + 0.99999f);
            }
            size += this.mPaddingLeft + this.mPaddingRight;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.mPaint.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.mPaddingTop + this.mPaddingBottom + fontMetricsInt;
            }
        }
        setMeasuredDimension(size, size2);
    }

    public final void setRoundPercent(float f) {
        boolean z;
        if (this.mRoundPercent != f) {
            z = true;
        } else {
            z = false;
        }
        this.mRoundPercent = f;
        if (f != 0.0f) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            if (this.mRect == null) {
                this.mRect = new RectF();
            }
            if (this.mViewOutlineProvider == null) {
                ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.MotionLabel.1
                    @Override // android.view.ViewOutlineProvider
                    public final void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), (Math.min(r3, r4) * MotionLabel.this.mRoundPercent) / 2.0f);
                    }
                };
                this.mViewOutlineProvider = viewOutlineProvider;
                setOutlineProvider(viewOutlineProvider);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.mRoundPercent) / 2.0f;
            this.mRect.set(0.0f, 0.0f, width, height);
            this.mPath.reset();
            this.mPath.addRoundRect(this.mRect, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public final void setTypeface(Typeface typeface) {
        if (this.mPaint.getTypeface() != typeface) {
            this.mPaint.setTypeface(typeface);
        }
    }

    public final void layout(float f, float f2, float f3, float f4) {
        int i = (int) (f + 0.5f);
        this.mDeltaLeft = f - i;
        int i2 = (int) (f3 + 0.5f);
        int i3 = i2 - i;
        int i4 = (int) (f4 + 0.5f);
        int i5 = (int) (0.5f + f2);
        int i6 = i4 - i5;
        float f5 = f3 - f;
        this.mFloatWidth = f5;
        float f6 = f4 - f2;
        this.mFloatHeight = f6;
        adjustTexture(f, f2, f3, f4);
        if (getMeasuredHeight() == i6 && getMeasuredWidth() == i3) {
            super.layout(i, i5, i2, i4);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i3, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(i6, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            super.layout(i, i5, i2, i4);
        }
        if (this.mAutoSize) {
            if (this.mTempRect == null) {
                this.mTempPaint = new Paint();
                this.mTempRect = new Rect();
                this.mTempPaint.set(this.mPaint);
                this.paintTextSize = this.mTempPaint.getTextSize();
            }
            this.mFloatWidth = f5;
            this.mFloatHeight = f6;
            Paint paint = this.mTempPaint;
            String str = this.mText;
            paint.getTextBounds(str, 0, str.length(), this.mTempRect);
            float height = this.mTempRect.height() * 1.3f;
            float f7 = (f5 - this.mPaddingRight) - this.mPaddingLeft;
            float f8 = (f6 - this.mPaddingBottom) - this.mPaddingTop;
            float width = this.mTempRect.width();
            if (width * f8 > height * f7) {
                this.mPaint.setTextSize((this.paintTextSize * f7) / width);
            } else {
                this.mPaint.setTextSize((this.paintTextSize * f8) / height);
            }
            if (this.mUseOutline || !Float.isNaN(this.mBaseTextSize)) {
                buildShape(Float.isNaN(this.mBaseTextSize) ? 1.0f : this.mTextSize / this.mBaseTextSize);
            }
        }
    }

    public MotionLabel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mTextOutlineColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = "Hello World";
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }

    public MotionLabel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new TextPaint();
        this.mPath = new Path();
        this.mTextFillColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mTextOutlineColor = CustomDeviceManager.QUICK_PANEL_ALL;
        this.mUseOutline = false;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mTextSize = 48.0f;
        this.mBaseTextSize = Float.NaN;
        this.mTextOutlineThickness = 0.0f;
        this.mText = "Hello World";
        this.mNotBuilt = true;
        this.mTextBounds = new Rect();
        this.mPaddingLeft = 1;
        this.mPaddingRight = 1;
        this.mPaddingTop = 1;
        this.mPaddingBottom = 1;
        this.mGravity = 8388659;
        this.mAutoSizeTextType = 0;
        this.mAutoSize = false;
        this.mTextureHeight = Float.NaN;
        this.mTextureWidth = Float.NaN;
        this.mTextPanX = 0.0f;
        this.mTextPanY = 0.0f;
        this.paintCache = new Paint();
        this.mTextureEffect = 0;
        this.mBackgroundPanX = Float.NaN;
        this.mBackgroundPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }
}
