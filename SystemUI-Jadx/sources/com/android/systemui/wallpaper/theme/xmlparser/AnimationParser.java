package com.android.systemui.wallpaper.theme.xmlparser;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.android.systemui.wallpaper.theme.builder.AnimationBuilder;
import com.android.systemui.wallpaper.theme.builder.ComplexAnimationBuilder;
import com.android.systemui.wallpaper.theme.view.FrameImageView;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimationParser extends BaseParser {
    public final String mAttribute;

    public AnimationParser(String str) {
        this.mAttribute = str;
    }

    @Override // com.android.systemui.wallpaper.theme.xmlparser.BaseParser
    public final void parseAttribute(ParserData parserData) {
        XmlPullParser xmlPullParser;
        ValueAnimator ofFloat;
        FrameImageView frameImageView;
        float devicePixelY;
        float devicePixelY2;
        float devicePixelX;
        float devicePixelX2;
        if (parserData == null || (xmlPullParser = parserData.mXpp) == null) {
            return;
        }
        boolean z = parserData.mIsStartTag;
        int i = 0;
        Resources resources = parserData.mApkResources;
        if (z) {
            AnimationBuilder animationBuilder = new AnimationBuilder();
            float f = parserData.mDeviceDensity;
            boolean z2 = parserData.mIsWallpaper;
            int attributeCount = xmlPullParser.getAttributeCount();
            while (i < attributeCount) {
                String attributeName = xmlPullParser.getAttributeName(i);
                String attributeValue = xmlPullParser.getAttributeValue(i);
                if (!TextUtils.isEmpty(attributeName) && !TextUtils.isEmpty(attributeValue)) {
                    animationBuilder.dx = parserData.mScaledDx;
                    animationBuilder.dy = parserData.mScaledDy;
                    if (attributeName.equalsIgnoreCase("fromDegrees")) {
                        animationBuilder.from = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("toDegrees")) {
                        animationBuilder.to = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("key")) {
                        animationBuilder.key = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("xFrom")) {
                        animationBuilder.from = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("xTo")) {
                        animationBuilder.to = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("xOffSet")) {
                        animationBuilder.xOffSet = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("yOffSet")) {
                        animationBuilder.yOffSet = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("key")) {
                        animationBuilder.key = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("adjust")) {
                        animationBuilder.adjust = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("yFrom")) {
                        animationBuilder.from = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("yTo")) {
                        animationBuilder.to = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("r")) {
                        animationBuilder.r = (Float.parseFloat(attributeValue) * f) + 0.5f;
                    } else if (attributeName.equalsIgnoreCase("a")) {
                        animationBuilder.a = parserData.getDevicePixelX(Float.parseFloat(attributeValue)) + parserData.mScaledDx;
                    } else if (attributeName.equalsIgnoreCase("b")) {
                        animationBuilder.b = parserData.getDevicePixelY(Float.parseFloat(attributeValue)) + parserData.mScaledDy;
                    } else if (attributeName.equalsIgnoreCase("ra")) {
                        animationBuilder.ra = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("rb")) {
                        animationBuilder.rb = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                    } else if (attributeName.equalsIgnoreCase("fromAlpha")) {
                        animationBuilder.from = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("toAlpha")) {
                        animationBuilder.to = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("fromXDelta")) {
                        if (z2) {
                            devicePixelX2 = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                        } else {
                            devicePixelX2 = parserData.getDevicePixelX(Float.parseFloat(attributeValue)) + parserData.mScaledDx;
                        }
                        animationBuilder.from = devicePixelX2;
                    } else if (attributeName.equalsIgnoreCase("toXDelta")) {
                        if (z2) {
                            devicePixelX = parserData.getDevicePixelX(Float.parseFloat(attributeValue));
                        } else {
                            devicePixelX = parserData.getDevicePixelX(Float.parseFloat(attributeValue)) + parserData.mScaledDx;
                        }
                        animationBuilder.to = devicePixelX;
                    } else if (attributeName.equalsIgnoreCase("fromYDelta")) {
                        if (z2) {
                            devicePixelY2 = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                        } else {
                            devicePixelY2 = parserData.getDevicePixelY(Float.parseFloat(attributeValue)) + parserData.mScaledDy;
                        }
                        animationBuilder.from = devicePixelY2;
                    } else if (attributeName.equalsIgnoreCase("toYDelta")) {
                        if (z2) {
                            devicePixelY = parserData.getDevicePixelY(Float.parseFloat(attributeValue));
                        } else {
                            devicePixelY = parserData.getDevicePixelY(Float.parseFloat(attributeValue)) + parserData.mScaledDy;
                        }
                        animationBuilder.to = devicePixelY;
                    } else if (attributeName.equalsIgnoreCase("fromXScale")) {
                        animationBuilder.from = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("toXScale")) {
                        animationBuilder.to = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("fromYScale")) {
                        animationBuilder.from = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("toYScale")) {
                        animationBuilder.to = Float.parseFloat(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("length")) {
                        animationBuilder.length = Integer.parseInt(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("image")) {
                        animationBuilder.imageViewId = resources.getIdentifier(attributeValue, "drawable", parserData.mPkgName);
                    } else if (attributeName.equalsIgnoreCase("duration")) {
                        animationBuilder.duration = Long.parseLong(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("repeatCount")) {
                        animationBuilder.repeatCount = Integer.parseInt(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("repeatMode")) {
                        animationBuilder.repeatMode = Integer.parseInt(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("delay")) {
                        animationBuilder.delay = Long.parseLong(attributeValue);
                    } else if (attributeName.equalsIgnoreCase("accelerateInterpolator")) {
                        if (attributeValue.equals("default")) {
                            animationBuilder.interpolator = new AccelerateInterpolator();
                        } else {
                            animationBuilder.interpolator = new AccelerateInterpolator(Float.parseFloat(attributeValue));
                        }
                    } else if (attributeName.equalsIgnoreCase("decelerateInterpolator")) {
                        if (attributeValue.equals("default")) {
                            animationBuilder.interpolator = new DecelerateInterpolator();
                        } else {
                            animationBuilder.interpolator = new DecelerateInterpolator(Float.parseFloat(attributeValue));
                        }
                    } else if (attributeName.equalsIgnoreCase("accelerateDecelerateInterpolator")) {
                        animationBuilder.interpolator = new AccelerateDecelerateInterpolator();
                    } else if (attributeName.equalsIgnoreCase("normalSpeed")) {
                        animationBuilder.interpolator = null;
                    }
                }
                i++;
            }
            parserData.mAnimationBuilder = animationBuilder;
            return;
        }
        String str = this.mAttribute;
        if (str.equalsIgnoreCase("ImageResource") && (frameImageView = parserData.mFrameImageView) != null) {
            frameImageView.mApkResources = resources;
        }
        ComplexAnimationBuilder complexAnimationBuilder = parserData.mComplexAnimationBuilder;
        if (complexAnimationBuilder == null) {
            return;
        }
        AnimationBuilder animationBuilder2 = parserData.mAnimationBuilder;
        FrameImageView frameImageView2 = parserData.mFrameImageView;
        animationBuilder2.getClass();
        if (str.equals("round")) {
            animationBuilder2.imageView = frameImageView2;
            float f2 = (float) ((animationBuilder2.from / 360.0f) * 2.0f * 3.141592653589793d);
            animationBuilder2.from = f2;
            float f3 = (float) ((animationBuilder2.to / 360.0f) * 2.0f * 3.141592653589793d);
            animationBuilder2.to = f3;
            ofFloat = ValueAnimator.ofFloat(f2, f3);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.3
                public AnonymousClass3() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                    ImageView imageView = animationBuilder3.imageView;
                    float f4 = animationBuilder3.a;
                    float f5 = animationBuilder3.r;
                    float f6 = animationBuilder3.from;
                    imageView.setX((f5 * ((float) Math.cos((valueAnimator.getAnimatedFraction() * (animationBuilder3.to - f6)) + f6))) + f4);
                    AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                    ImageView imageView2 = animationBuilder4.imageView;
                    float f7 = animationBuilder4.b;
                    float f8 = animationBuilder4.r;
                    float f9 = animationBuilder4.from;
                    imageView2.setY((f8 * ((float) Math.sin((valueAnimator.getAnimatedFraction() * (animationBuilder4.to - f9)) + f9))) + f7);
                }
            });
        } else if (str.equals("ellipse")) {
            animationBuilder2.imageView = frameImageView2;
            float f4 = (float) ((animationBuilder2.from / 360.0f) * 2.0f * 3.141592653589793d);
            animationBuilder2.from = f4;
            float f5 = (float) ((animationBuilder2.to / 360.0f) * 2.0f * 3.141592653589793d);
            animationBuilder2.to = f5;
            ofFloat = ValueAnimator.ofFloat(f4, f5);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.4
                public AnonymousClass4() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                    ImageView imageView = animationBuilder3.imageView;
                    float f6 = animationBuilder3.a;
                    float f7 = animationBuilder3.ra;
                    float f8 = animationBuilder3.from;
                    imageView.setX((f7 * ((float) Math.cos((valueAnimator.getAnimatedFraction() * (animationBuilder3.to - f8)) + f8))) + f6);
                    AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                    ImageView imageView2 = animationBuilder4.imageView;
                    float f9 = animationBuilder4.b;
                    float f10 = animationBuilder4.rb;
                    float f11 = animationBuilder4.from;
                    imageView2.setY((f10 * ((float) Math.sin((valueAnimator.getAnimatedFraction() * (animationBuilder4.to - f11)) + f11))) + f9);
                }
            });
        } else if (str.equals("parabola")) {
            animationBuilder2.imageView = frameImageView2;
            if (animationBuilder2.to > animationBuilder2.from) {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.ParabolaEvaluator(animationBuilder2.key, animationBuilder2.xOffSet, animationBuilder2.yOffSet), Float.valueOf(animationBuilder2.from), Float.valueOf(animationBuilder2.to));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.5
                    public AnonymousClass5() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.dx + animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setX(((animationBuilder4.to - animationBuilder4.from) * animatedFraction) + f6);
                        AnimationBuilder animationBuilder5 = AnimationBuilder.this;
                        animationBuilder5.imageView.setY(((Float) valueAnimator.getAnimatedValue()).floatValue() + animationBuilder5.dy);
                    }
                });
            } else {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.ParabolaEvaluatorReverse(animationBuilder2.key, animationBuilder2.xOffSet, animationBuilder2.yOffSet), Float.valueOf(animationBuilder2.to), Float.valueOf(animationBuilder2.from));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.6
                    public AnonymousClass6() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.dx + animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setX(f6 - ((animationBuilder4.from - animationBuilder4.to) * animatedFraction));
                        AnimationBuilder animationBuilder5 = AnimationBuilder.this;
                        animationBuilder5.imageView.setY(((Float) valueAnimator.getAnimatedValue()).floatValue() + animationBuilder5.dy);
                    }
                });
            }
        } else if (str.equals("sinX")) {
            animationBuilder2.imageView = frameImageView2;
            if (animationBuilder2.to > animationBuilder2.from) {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.SinXEvaluator(animationBuilder2.key, animationBuilder2.adjust, animationBuilder2.xOffSet, animationBuilder2.yOffSet), Float.valueOf(animationBuilder2.from), Float.valueOf(animationBuilder2.to));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.7
                    public AnonymousClass7() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setX(((animationBuilder4.to - animationBuilder4.from) * animatedFraction) + f6);
                        AnimationBuilder.this.imageView.setY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            } else {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.SinXEvaluatorReverse(animationBuilder2.key, animationBuilder2.adjust, animationBuilder2.xOffSet, animationBuilder2.yOffSet), Float.valueOf(animationBuilder2.to), Float.valueOf(animationBuilder2.from));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.8
                    public AnonymousClass8() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setX(f6 - ((animationBuilder4.from - animationBuilder4.to) * animatedFraction));
                        AnimationBuilder.this.imageView.setY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
        } else if (str.equals("sinY")) {
            animationBuilder2.imageView = frameImageView2;
            if (animationBuilder2.to > animationBuilder2.from) {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.SinYEvaluator(animationBuilder2.key, animationBuilder2.adjust, animationBuilder2.yOffSet, animationBuilder2.xOffSet), Float.valueOf(animationBuilder2.from), Float.valueOf(animationBuilder2.to));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.9
                    public AnonymousClass9() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setY(((animationBuilder4.to - animationBuilder4.from) * animatedFraction) + f6);
                        AnimationBuilder.this.imageView.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            } else {
                ofFloat = ValueAnimator.ofObject(new AnimationBuilder.SinYEvaluatorReverse(animationBuilder2.key, animationBuilder2.adjust, animationBuilder2.yOffSet, animationBuilder2.xOffSet), Float.valueOf(animationBuilder2.to), Float.valueOf(animationBuilder2.from));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.10
                    public AnonymousClass10() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                        ImageView imageView = animationBuilder3.imageView;
                        float f6 = animationBuilder3.from;
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                        imageView.setY(f6 - ((animationBuilder4.from - animationBuilder4.to) * animatedFraction));
                        AnimationBuilder.this.imageView.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
        } else if (str.equals("ImageResource")) {
            int i2 = animationBuilder2.length;
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            frameImageView2.mImageSetIds = new int[i2];
            animationBuilder2.elementDuration = animationBuilder2.duration / (i2 - 1);
            while (i < animationBuilder2.length) {
                iArr2[i] = i;
                int i3 = animationBuilder2.imageViewId;
                animationBuilder2.imageViewId = i3 + 1;
                iArr[i] = i3;
                frameImageView2.mImageSetIds[i] = i3;
                i++;
            }
            ofFloat = ValueAnimator.ofInt(iArr2);
            ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.1
                public final /* synthetic */ FrameImageView val$view;

                public AnonymousClass1(FrameImageView frameImageView22) {
                    r2 = frameImageView22;
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                    animationBuilder3.isAnimationStarted = false;
                    animationBuilder3.startTime = 0L;
                    r2.mQueue.clear();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    AnimationBuilder.this.isAnimationStarted = true;
                    r2.mQueue.clear();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }
            });
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.2
                public final /* synthetic */ FrameImageView val$view;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                /* renamed from: com.android.systemui.wallpaper.theme.builder.AnimationBuilder$2$1 */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends AsyncTask {
                    public Bitmap bitmap = null;
                    public final /* synthetic */ int val$sequence;

                    public AnonymousClass1(int i) {
                        r2 = i;
                    }

                    @Override // android.os.AsyncTask
                    public final Object doInBackground(Object[] objArr) {
                        FrameImageView frameImageView = r2;
                        if (frameImageView != null) {
                            this.bitmap = BitmapFactory.decodeResource(frameImageView.mApkResources, frameImageView.mImageSetIds[r2]);
                            return null;
                        }
                        return null;
                    }

                    @Override // android.os.AsyncTask
                    public final void onPostExecute(Object obj) {
                        FrameImageView frameImageView = r2;
                        if (frameImageView != null && frameImageView.isAttachedToWindow()) {
                            r2.setImageBitmap(this.bitmap);
                            Bitmap bitmap = r2.mUsed;
                            if (bitmap != null) {
                                bitmap.recycle();
                            }
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            FrameImageView frameImageView2 = r2;
                            frameImageView2.mUsed = this.bitmap;
                            this.bitmap = null;
                            AnimationBuilder animationBuilder = AnimationBuilder.this;
                            int i = r2;
                            animationBuilder.preSequence = i;
                            frameImageView2.mQueue.remove(Integer.valueOf(i));
                        }
                    }
                }

                public AnonymousClass2(FrameImageView frameImageView22) {
                    r2 = frameImageView22;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int i4;
                    int i5;
                    ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    long currentTimeMillis = System.currentTimeMillis();
                    AnimationBuilder animationBuilder3 = AnimationBuilder.this;
                    if (currentTimeMillis - animationBuilder3.startTime < animationBuilder3.elementDuration) {
                        return;
                    }
                    animationBuilder3.startTime = System.currentTimeMillis();
                    if (r2.mQueue.size() < 5) {
                        if (r2.mQueue.size() > 0 && r2.mQueue.peekLast() != null) {
                            i4 = ((Integer) r2.mQueue.peekLast()).intValue();
                        } else {
                            AnimationBuilder animationBuilder4 = AnimationBuilder.this;
                            if (!animationBuilder4.isAnimationStarted) {
                                animationBuilder4.preSequence = -1;
                            }
                            i4 = animationBuilder4.preSequence;
                        }
                        if (i4 < AnimationBuilder.this.length - 2) {
                            i5 = i4 + 1;
                        } else {
                            i5 = 0;
                        }
                        r2.mQueue.add(Integer.valueOf(i5));
                        new AsyncTask() { // from class: com.android.systemui.wallpaper.theme.builder.AnimationBuilder.2.1
                            public Bitmap bitmap = null;
                            public final /* synthetic */ int val$sequence;

                            public AnonymousClass1(int i52) {
                                r2 = i52;
                            }

                            @Override // android.os.AsyncTask
                            public final Object doInBackground(Object[] objArr) {
                                FrameImageView frameImageView3 = r2;
                                if (frameImageView3 != null) {
                                    this.bitmap = BitmapFactory.decodeResource(frameImageView3.mApkResources, frameImageView3.mImageSetIds[r2]);
                                    return null;
                                }
                                return null;
                            }

                            @Override // android.os.AsyncTask
                            public final void onPostExecute(Object obj) {
                                FrameImageView frameImageView3 = r2;
                                if (frameImageView3 != null && frameImageView3.isAttachedToWindow()) {
                                    r2.setImageBitmap(this.bitmap);
                                    Bitmap bitmap = r2.mUsed;
                                    if (bitmap != null) {
                                        bitmap.recycle();
                                    }
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    FrameImageView frameImageView22 = r2;
                                    frameImageView22.mUsed = this.bitmap;
                                    this.bitmap = null;
                                    AnimationBuilder animationBuilder5 = AnimationBuilder.this;
                                    int i6 = r2;
                                    animationBuilder5.preSequence = i6;
                                    frameImageView22.mQueue.remove(Integer.valueOf(i6));
                                }
                            }
                        }.execute(new Void[0]);
                    }
                }
            });
        } else {
            ofFloat = ObjectAnimator.ofFloat(frameImageView22, str, animationBuilder2.from, animationBuilder2.to);
        }
        ofFloat.setStartDelay(animationBuilder2.delay);
        ofFloat.setDuration(animationBuilder2.duration);
        ofFloat.setRepeatCount(animationBuilder2.repeatCount);
        ofFloat.setRepeatMode(animationBuilder2.repeatMode);
        ofFloat.setInterpolator(animationBuilder2.interpolator);
        complexAnimationBuilder.mAnimatorSet.playTogether(ofFloat);
    }
}
