package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TypefaceUtils;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CollapsingTextHelper {
    public boolean boundsChanged;
    public final Rect collapsedBounds;
    public float collapsedDrawX;
    public float collapsedDrawY;
    public CancelableFontCallback collapsedFontCallback;
    public float collapsedLetterSpacing;
    public ColorStateList collapsedShadowColor;
    public float collapsedShadowDx;
    public float collapsedShadowDy;
    public float collapsedShadowRadius;
    public float collapsedTextBlend;
    public ColorStateList collapsedTextColor;
    public float collapsedTextWidth;
    public Typeface collapsedTypeface;
    public Typeface collapsedTypefaceBold;
    public Typeface collapsedTypefaceDefault;
    public final RectF currentBounds;
    public float currentDrawX;
    public float currentDrawY;
    public float currentLetterSpacing;
    public int currentShadowColor;
    public float currentShadowDx;
    public float currentShadowDy;
    public float currentShadowRadius;
    public float currentTextSize;
    public Typeface currentTypeface;
    public final Rect expandedBounds;
    public float expandedDrawX;
    public float expandedDrawY;
    public CancelableFontCallback expandedFontCallback;
    public float expandedFraction;
    public float expandedLetterSpacing;
    public int expandedLineCount;
    public ColorStateList expandedShadowColor;
    public float expandedShadowDx;
    public float expandedShadowDy;
    public float expandedShadowRadius;
    public float expandedTextBlend;
    public ColorStateList expandedTextColor;
    public Bitmap expandedTitleTexture;
    public Typeface expandedTypeface;
    public Typeface expandedTypefaceBold;
    public Typeface expandedTypefaceDefault;
    public boolean isRtl;
    public TimeInterpolator positionInterpolator;
    public float scale;
    public int[] state;
    public CharSequence text;
    public StaticLayout textLayout;
    public final TextPaint textPaint;
    public TimeInterpolator textSizeInterpolator;
    public CharSequence textToDraw;
    public CharSequence textToDrawCollapsed;
    public final TextPaint tmpPaint;
    public final View view;
    public int expandedTextGravity = 16;
    public int collapsedTextGravity = 16;
    public float expandedTextSize = 15.0f;
    public float collapsedTextSize = 15.0f;
    public TextUtils.TruncateAt titleTextEllipsize = TextUtils.TruncateAt.END;
    public boolean isRtlTextDirectionHeuristicsEnabled = true;
    public int maxLines = 1;
    public final float lineSpacingMultiplier = 1.0f;
    public final int hyphenationFrequency = 1;

    public CollapsingTextHelper(View view) {
        this.view = view;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        maybeUpdateFontWeightAdjustment(view.getContext().getResources().getConfiguration());
    }

    public static int blendARGB(float f, int i, int i2) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), Math.round((Color.red(i2) * f) + (Color.red(i) * f2)), Math.round((Color.green(i2) * f) + (Color.green(i) * f2)), Math.round((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float lerp(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        TimeInterpolator timeInterpolator2 = AnimationUtils.LINEAR_INTERPOLATOR;
        return DependencyGraph$$ExternalSyntheticOutline0.m(f2, f, f3, f);
    }

    public final boolean calculateIsRtl(CharSequence charSequence) {
        TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal textDirectionHeuristicInternal;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        boolean z = true;
        if (ViewCompat.Api17Impl.getLayoutDirection(this.view) != 1) {
            z = false;
        }
        if (this.isRtlTextDirectionHeuristicsEnabled) {
            if (z) {
                textDirectionHeuristicInternal = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
            } else {
                textDirectionHeuristicInternal = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
            }
            return textDirectionHeuristicInternal.isRtl(charSequence.length(), charSequence);
        }
        return z;
    }

    public final void calculateUsingTextSize(float f, boolean z) {
        boolean z2;
        boolean z3;
        float f2;
        float f3;
        Typeface typeface;
        boolean z4;
        boolean z5;
        StaticLayout staticLayout;
        Layout.Alignment alignment;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        if (this.text == null) {
            return;
        }
        float width = this.collapsedBounds.width();
        float width2 = this.expandedBounds.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            f2 = this.collapsedTextSize;
            f3 = this.collapsedLetterSpacing;
            this.scale = 1.0f;
            typeface = this.collapsedTypeface;
        } else {
            float f4 = this.expandedTextSize;
            float f5 = this.expandedLetterSpacing;
            Typeface typeface2 = this.expandedTypeface;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                this.scale = 1.0f;
            } else {
                this.scale = lerp(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator) / this.expandedTextSize;
            }
            float f6 = this.collapsedTextSize / this.expandedTextSize;
            float f7 = width2 * f6;
            if (!z && f7 > width) {
                width = Math.min(width / f6, width2);
            } else {
                width = width2;
            }
            f2 = f4;
            f3 = f5;
            typeface = typeface2;
        }
        TextPaint textPaint = this.textPaint;
        if (width > 0.0f) {
            if (this.currentTextSize != f2) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (this.currentLetterSpacing != f3) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (this.currentTypeface != typeface) {
                z8 = true;
            } else {
                z8 = false;
            }
            if (this.textLayout != null && width != r10.getWidth()) {
                z9 = true;
            } else {
                z9 = false;
            }
            if (!z6 && !z7 && !z9 && !z8 && !this.boundsChanged) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.currentTextSize = f2;
            this.currentLetterSpacing = f3;
            this.currentTypeface = typeface;
            this.boundsChanged = false;
            if (this.scale != 1.0f) {
                z11 = true;
            } else {
                z11 = false;
            }
            textPaint.setLinearText(z11);
            z4 = z10;
        } else {
            z4 = false;
        }
        if (this.textToDraw == null || z4) {
            textPaint.setTextSize(this.currentTextSize);
            textPaint.setTypeface(this.currentTypeface);
            textPaint.setLetterSpacing(this.currentLetterSpacing);
            boolean calculateIsRtl = calculateIsRtl(this.text);
            this.isRtl = calculateIsRtl;
            int i = this.maxLines;
            if (i > 1 && !calculateIsRtl) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!z5) {
                i = 1;
            }
            try {
                if (i == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = Gravity.getAbsoluteGravity(this.expandedTextGravity, calculateIsRtl ? 1 : 0) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            if (this.isRtl) {
                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            } else {
                                alignment = Layout.Alignment.ALIGN_NORMAL;
                            }
                        } else if (this.isRtl) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        }
                    } else {
                        alignment = Layout.Alignment.ALIGN_CENTER;
                    }
                }
                StaticLayoutBuilderCompat obtain = StaticLayoutBuilderCompat.obtain(this.text, textPaint, (int) width);
                obtain.ellipsize = this.titleTextEllipsize;
                obtain.isRtl = calculateIsRtl;
                obtain.alignment = alignment;
                obtain.includePad = false;
                obtain.maxLines = i;
                float f8 = this.lineSpacingMultiplier;
                obtain.lineSpacingAdd = 0.0f;
                obtain.lineSpacingMultiplier = f8;
                obtain.hyphenationFrequency = this.hyphenationFrequency;
                staticLayout = obtain.build();
            } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e) {
                Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
                staticLayout = null;
            }
            staticLayout.getClass();
            this.textLayout = staticLayout;
            this.textToDraw = staticLayout.getText();
        }
    }

    public final void draw(Canvas canvas) {
        int save = canvas.save();
        if (this.textToDraw != null) {
            RectF rectF = this.currentBounds;
            if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                TextPaint textPaint = this.textPaint;
                textPaint.setTextSize(this.currentTextSize);
                float f = this.currentDrawX;
                float f2 = this.currentDrawY;
                float f3 = this.scale;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                boolean z = true;
                if (this.maxLines <= 1 || this.isRtl) {
                    z = false;
                }
                if (z) {
                    float lineStart = this.currentDrawX - this.textLayout.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas.translate(lineStart, f2);
                    float f4 = alpha;
                    textPaint.setAlpha((int) (this.expandedTextBlend * f4));
                    textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, MaterialColors.compositeARGBWithAlpha(this.currentShadowColor, textPaint.getAlpha()));
                    this.textLayout.draw(canvas);
                    textPaint.setAlpha((int) (this.collapsedTextBlend * f4));
                    textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, MaterialColors.compositeARGBWithAlpha(this.currentShadowColor, textPaint.getAlpha()));
                    int lineBaseline = this.textLayout.getLineBaseline(0);
                    CharSequence charSequence = this.textToDrawCollapsed;
                    float f5 = lineBaseline;
                    canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, textPaint);
                    textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, this.currentShadowColor);
                    String trim = this.textToDrawCollapsed.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(this.textLayout.getLineEnd(0), str.length()), 0.0f, f5, (Paint) textPaint);
                } else {
                    canvas.translate(f, f2);
                    this.textLayout.draw(canvas);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    public final float getCollapsedTextHeight() {
        TextPaint textPaint = this.tmpPaint;
        textPaint.setTextSize(this.collapsedTextSize);
        textPaint.setTypeface(this.collapsedTypeface);
        textPaint.setLetterSpacing(this.collapsedLetterSpacing);
        return -textPaint.ascent();
    }

    public final int getCurrentColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.state;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    public final void maybeUpdateFontWeightAdjustment(Configuration configuration) {
        Typeface typeface = this.collapsedTypefaceDefault;
        if (typeface != null) {
            this.collapsedTypefaceBold = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface);
        }
        Typeface typeface2 = this.expandedTypefaceDefault;
        if (typeface2 != null) {
            this.expandedTypefaceBold = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
        }
        Typeface typeface3 = this.collapsedTypefaceBold;
        if (typeface3 == null) {
            typeface3 = this.collapsedTypefaceDefault;
        }
        this.collapsedTypeface = typeface3;
        Typeface typeface4 = this.expandedTypefaceBold;
        if (typeface4 == null) {
            typeface4 = this.expandedTypefaceDefault;
        }
        this.expandedTypeface = typeface4;
        recalculate(true);
    }

    public final void recalculate(boolean z) {
        float f;
        float f2;
        StaticLayout staticLayout;
        View view = this.view;
        if ((view.getHeight() > 0 && view.getWidth() > 0) || z) {
            calculateUsingTextSize(1.0f, z);
            CharSequence charSequence = this.textToDraw;
            TextPaint textPaint = this.textPaint;
            if (charSequence != null && (staticLayout = this.textLayout) != null) {
                this.textToDrawCollapsed = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.titleTextEllipsize);
            }
            CharSequence charSequence2 = this.textToDrawCollapsed;
            int i = 0;
            if (charSequence2 != null) {
                this.collapsedTextWidth = textPaint.measureText(charSequence2, 0, charSequence2.length());
            } else {
                this.collapsedTextWidth = 0.0f;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(this.collapsedTextGravity, this.isRtl ? 1 : 0);
            int i2 = absoluteGravity & 112;
            Rect rect = this.collapsedBounds;
            if (i2 != 48) {
                if (i2 != 80) {
                    this.collapsedDrawY = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
                } else {
                    this.collapsedDrawY = textPaint.ascent() + rect.bottom;
                }
            } else {
                this.collapsedDrawY = rect.top;
            }
            int i3 = absoluteGravity & 8388615;
            if (i3 != 1) {
                if (i3 != 5) {
                    this.collapsedDrawX = rect.left;
                } else {
                    this.collapsedDrawX = rect.right - this.collapsedTextWidth;
                }
            } else {
                this.collapsedDrawX = rect.centerX() - (this.collapsedTextWidth / 2.0f);
            }
            calculateUsingTextSize(0.0f, z);
            StaticLayout staticLayout2 = this.textLayout;
            if (staticLayout2 != null) {
                f = staticLayout2.getHeight();
            } else {
                f = 0.0f;
            }
            StaticLayout staticLayout3 = this.textLayout;
            if (staticLayout3 != null && this.maxLines > 1) {
                f2 = staticLayout3.getWidth();
            } else {
                CharSequence charSequence3 = this.textToDraw;
                if (charSequence3 != null) {
                    f2 = textPaint.measureText(charSequence3, 0, charSequence3.length());
                } else {
                    f2 = 0.0f;
                }
            }
            StaticLayout staticLayout4 = this.textLayout;
            if (staticLayout4 != null) {
                i = staticLayout4.getLineCount();
            }
            this.expandedLineCount = i;
            int absoluteGravity2 = Gravity.getAbsoluteGravity(this.expandedTextGravity, this.isRtl ? 1 : 0);
            int i4 = absoluteGravity2 & 112;
            Rect rect2 = this.expandedBounds;
            if (i4 != 48) {
                if (i4 != 80) {
                    this.expandedDrawY = rect2.centerY() - (f / 2.0f);
                } else {
                    this.expandedDrawY = textPaint.descent() + (rect2.bottom - f);
                }
            } else {
                this.expandedDrawY = rect2.top;
            }
            int i5 = absoluteGravity2 & 8388615;
            if (i5 != 1) {
                if (i5 != 5) {
                    this.expandedDrawX = rect2.left;
                } else {
                    this.expandedDrawX = rect2.right - f2;
                }
            } else {
                this.expandedDrawX = rect2.centerX() - (f2 / 2.0f);
            }
            Bitmap bitmap = this.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                this.expandedTitleTexture = null;
            }
            setInterpolatedTextSize(this.expandedFraction);
            float f3 = this.expandedFraction;
            float lerp = lerp(rect2.left, rect.left, f3, this.positionInterpolator);
            RectF rectF = this.currentBounds;
            rectF.left = lerp;
            rectF.top = lerp(this.expandedDrawY, this.collapsedDrawY, f3, this.positionInterpolator);
            rectF.right = lerp(rect2.right, rect.right, f3, this.positionInterpolator);
            rectF.bottom = lerp(rect2.bottom, rect.bottom, f3, this.positionInterpolator);
            this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f3, this.positionInterpolator);
            this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f3, this.positionInterpolator);
            setInterpolatedTextSize(f3);
            FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
            this.collapsedTextBlend = 1.0f - lerp(0.0f, 1.0f, 1.0f - f3, fastOutSlowInInterpolator);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
            this.expandedTextBlend = lerp(1.0f, 0.0f, f3, fastOutSlowInInterpolator);
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
            ColorStateList colorStateList = this.collapsedTextColor;
            ColorStateList colorStateList2 = this.expandedTextColor;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(blendARGB(f3, getCurrentColor(colorStateList2), getCurrentColor(this.collapsedTextColor)));
            } else {
                textPaint.setColor(getCurrentColor(colorStateList));
            }
            float f4 = this.collapsedLetterSpacing;
            float f5 = this.expandedLetterSpacing;
            if (f4 != f5) {
                textPaint.setLetterSpacing(lerp(f5, f4, f3, fastOutSlowInInterpolator));
            } else {
                textPaint.setLetterSpacing(f4);
            }
            this.currentShadowRadius = lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f3, null);
            this.currentShadowDx = lerp(this.expandedShadowDx, this.collapsedShadowDx, f3, null);
            this.currentShadowDy = lerp(this.expandedShadowDy, this.collapsedShadowDy, f3, null);
            int blendARGB = blendARGB(f3, getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor));
            this.currentShadowColor = blendARGB;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, blendARGB);
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
        }
    }

    public final void setCollapsedTextAppearance(int i) {
        View view = this.view;
        TextAppearance textAppearance = new TextAppearance(view.getContext(), i);
        ColorStateList colorStateList = textAppearance.textColor;
        if (colorStateList != null) {
            this.collapsedTextColor = colorStateList;
        }
        float f = textAppearance.textSize;
        if (f != 0.0f) {
            this.collapsedTextSize = f;
        }
        ColorStateList colorStateList2 = textAppearance.shadowColor;
        if (colorStateList2 != null) {
            this.collapsedShadowColor = colorStateList2;
        }
        this.collapsedShadowDx = textAppearance.shadowDx;
        this.collapsedShadowDy = textAppearance.shadowDy;
        this.collapsedShadowRadius = textAppearance.shadowRadius;
        this.collapsedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        CancelableFontCallback.ApplyFont applyFont = new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public final void apply(Typeface typeface) {
                CollapsingTextHelper collapsingTextHelper = CollapsingTextHelper.this;
                if (collapsingTextHelper.setCollapsedTypefaceInternal(typeface)) {
                    collapsingTextHelper.recalculate(false);
                }
            }
        };
        textAppearance.createFallbackFont();
        this.collapsedFontCallback = new CancelableFontCallback(applyFont, textAppearance.font);
        textAppearance.getFontAsync(view.getContext(), this.collapsedFontCallback);
        recalculate(false);
    }

    public final void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor != colorStateList) {
            this.collapsedTextColor = colorStateList;
            recalculate(false);
        }
    }

    public final boolean setCollapsedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        if (this.collapsedTypefaceDefault != typeface) {
            this.collapsedTypefaceDefault = typeface;
            Typeface maybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.view.getContext().getResources().getConfiguration(), typeface);
            this.collapsedTypefaceBold = maybeCopyWithFontWeightAdjustment;
            if (maybeCopyWithFontWeightAdjustment == null) {
                maybeCopyWithFontWeightAdjustment = this.collapsedTypefaceDefault;
            }
            this.collapsedTypeface = maybeCopyWithFontWeightAdjustment;
            return true;
        }
        return false;
    }

    public final void setExpandedTextAppearance(int i) {
        View view = this.view;
        TextAppearance textAppearance = new TextAppearance(view.getContext(), i);
        ColorStateList colorStateList = textAppearance.textColor;
        if (colorStateList != null) {
            this.expandedTextColor = colorStateList;
        }
        float f = textAppearance.textSize;
        if (f != 0.0f) {
            this.expandedTextSize = f;
        }
        ColorStateList colorStateList2 = textAppearance.shadowColor;
        if (colorStateList2 != null) {
            this.expandedShadowColor = colorStateList2;
        }
        this.expandedShadowDx = textAppearance.shadowDx;
        this.expandedShadowDy = textAppearance.shadowDy;
        this.expandedShadowRadius = textAppearance.shadowRadius;
        this.expandedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        CancelableFontCallback.ApplyFont applyFont = new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.2
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public final void apply(Typeface typeface) {
                CollapsingTextHelper collapsingTextHelper = CollapsingTextHelper.this;
                if (collapsingTextHelper.setExpandedTypefaceInternal(typeface)) {
                    collapsingTextHelper.recalculate(false);
                }
            }
        };
        textAppearance.createFallbackFont();
        this.expandedFontCallback = new CancelableFontCallback(applyFont, textAppearance.font);
        textAppearance.getFontAsync(view.getContext(), this.expandedFontCallback);
        recalculate(false);
    }

    public final boolean setExpandedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        if (this.expandedTypefaceDefault != typeface) {
            this.expandedTypefaceDefault = typeface;
            Typeface maybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.view.getContext().getResources().getConfiguration(), typeface);
            this.expandedTypefaceBold = maybeCopyWithFontWeightAdjustment;
            if (maybeCopyWithFontWeightAdjustment == null) {
                maybeCopyWithFontWeightAdjustment = this.expandedTypefaceDefault;
            }
            this.expandedTypeface = maybeCopyWithFontWeightAdjustment;
            return true;
        }
        return false;
    }

    public final void setExpansionFraction(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (clamp != this.expandedFraction) {
            this.expandedFraction = clamp;
            float f2 = this.expandedBounds.left;
            Rect rect = this.collapsedBounds;
            float lerp = lerp(f2, rect.left, clamp, this.positionInterpolator);
            RectF rectF = this.currentBounds;
            rectF.left = lerp;
            rectF.top = lerp(this.expandedDrawY, this.collapsedDrawY, clamp, this.positionInterpolator);
            rectF.right = lerp(r2.right, rect.right, clamp, this.positionInterpolator);
            rectF.bottom = lerp(r2.bottom, rect.bottom, clamp, this.positionInterpolator);
            this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, clamp, this.positionInterpolator);
            this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, clamp, this.positionInterpolator);
            setInterpolatedTextSize(clamp);
            FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
            this.collapsedTextBlend = 1.0f - lerp(0.0f, 1.0f, 1.0f - clamp, fastOutSlowInInterpolator);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            View view = this.view;
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
            this.expandedTextBlend = lerp(1.0f, 0.0f, clamp, fastOutSlowInInterpolator);
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
            ColorStateList colorStateList = this.collapsedTextColor;
            ColorStateList colorStateList2 = this.expandedTextColor;
            TextPaint textPaint = this.textPaint;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(blendARGB(clamp, getCurrentColor(colorStateList2), getCurrentColor(this.collapsedTextColor)));
            } else {
                textPaint.setColor(getCurrentColor(colorStateList));
            }
            float f3 = this.collapsedLetterSpacing;
            float f4 = this.expandedLetterSpacing;
            if (f3 != f4) {
                textPaint.setLetterSpacing(lerp(f4, f3, clamp, fastOutSlowInInterpolator));
            } else {
                textPaint.setLetterSpacing(f3);
            }
            this.currentShadowRadius = lerp(this.expandedShadowRadius, this.collapsedShadowRadius, clamp, null);
            this.currentShadowDx = lerp(this.expandedShadowDx, this.collapsedShadowDx, clamp, null);
            this.currentShadowDy = lerp(this.expandedShadowDy, this.collapsedShadowDy, clamp, null);
            int blendARGB = blendARGB(clamp, getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor));
            this.currentShadowColor = blendARGB;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, blendARGB);
            ViewCompat.Api16Impl.postInvalidateOnAnimation(view);
        }
    }

    public final void setInterpolatedTextSize(float f) {
        calculateUsingTextSize(f, false);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.postInvalidateOnAnimation(this.view);
    }

    public final boolean setState(int[] iArr) {
        ColorStateList colorStateList;
        boolean z;
        this.state = iArr;
        ColorStateList colorStateList2 = this.collapsedTextColor;
        if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.expandedTextColor) != null && colorStateList.isStateful())) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        recalculate(false);
        return true;
    }
}
