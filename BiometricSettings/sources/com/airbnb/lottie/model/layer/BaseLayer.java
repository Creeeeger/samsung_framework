package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.MaskKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {
    private final List<BaseKeyframeAnimation<?, ?>> animations;
    final Matrix boundsMatrix;
    private final LPaint clearPaint;
    private final String drawTraceName;
    private FloatKeyframeAnimation inOutAnimation;
    final Layer layerModel;
    final LottieDrawable lottieDrawable;
    private MaskKeyframeAnimation mask;
    private final RectF maskBoundsRect;
    private final RectF matteBoundsRect;
    private BaseLayer matteLayer;
    private final LPaint mattePaint;
    private boolean outlineMasksAndMattes;
    private LPaint outlineMasksAndMattesPaint;
    private BaseLayer parentLayer;
    private List<BaseLayer> parentLayers;
    private final RectF rect;
    private final RectF tempMaskBoundsRect;
    final TransformKeyframeAnimation transform;
    private boolean visible;
    private final Path path = new Path();
    private final Matrix matrix = new Matrix();
    private final LPaint contentPaint = new LPaint(1);
    private final LPaint dstInPaint = new LPaint(PorterDuff.Mode.DST_IN, 0);
    private final LPaint dstOutPaint = new LPaint(PorterDuff.Mode.DST_OUT, 0);

    BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        LPaint lPaint = new LPaint(1);
        this.mattePaint = lPaint;
        this.clearPaint = new LPaint(PorterDuff.Mode.CLEAR);
        this.rect = new RectF();
        this.maskBoundsRect = new RectF();
        this.matteBoundsRect = new RectF();
        this.tempMaskBoundsRect = new RectF();
        this.boundsMatrix = new Matrix();
        this.animations = new ArrayList();
        this.visible = true;
        this.lottieDrawable = lottieDrawable;
        this.layerModel = layer;
        this.drawTraceName = layer.getName() + "#draw";
        if (layer.getMatteType() == Layer.MatteType.INVERT) {
            lPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            lPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        AnimatableTransform transform = layer.getTransform();
        transform.getClass();
        TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(transform);
        this.transform = transformKeyframeAnimation;
        transformKeyframeAnimation.addListener(this);
        if (layer.getMasks() != null && !layer.getMasks().isEmpty()) {
            MaskKeyframeAnimation maskKeyframeAnimation = new MaskKeyframeAnimation(layer.getMasks());
            this.mask = maskKeyframeAnimation;
            Iterator it = ((ArrayList) maskKeyframeAnimation.getMaskAnimations()).iterator();
            while (it.hasNext()) {
                ((BaseKeyframeAnimation) it.next()).addUpdateListener(this);
            }
            Iterator it2 = ((ArrayList) this.mask.getOpacityAnimations()).iterator();
            while (it2.hasNext()) {
                BaseKeyframeAnimation<?, ?> baseKeyframeAnimation = (BaseKeyframeAnimation) it2.next();
                addAnimation(baseKeyframeAnimation);
                baseKeyframeAnimation.addUpdateListener(this);
            }
        }
        Layer layer2 = this.layerModel;
        if (layer2.getInOutKeyframes().isEmpty()) {
            if (true != this.visible) {
                this.visible = true;
                this.lottieDrawable.invalidateSelf();
                return;
            }
            return;
        }
        FloatKeyframeAnimation floatKeyframeAnimation = new FloatKeyframeAnimation(layer2.getInOutKeyframes());
        this.inOutAnimation = floatKeyframeAnimation;
        floatKeyframeAnimation.setIsDiscrete();
        this.inOutAnimation.addUpdateListener(new BaseKeyframeAnimation.AnimationListener() { // from class: com.airbnb.lottie.model.layer.BaseLayer.1
            @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
            public final void onValueChanged() {
                BaseLayer baseLayer = BaseLayer.this;
                BaseLayer.access$100(baseLayer, baseLayer.inOutAnimation.getFloatValue() == 1.0f);
            }
        });
        boolean z = this.inOutAnimation.getValue().floatValue() == 1.0f;
        if (z != this.visible) {
            this.visible = z;
            this.lottieDrawable.invalidateSelf();
        }
        addAnimation(this.inOutAnimation);
    }

    static void access$100(BaseLayer baseLayer, boolean z) {
        if (z != baseLayer.visible) {
            baseLayer.visible = z;
            baseLayer.lottieDrawable.invalidateSelf();
        }
    }

    private void buildParentLayerListIfNeeded() {
        if (this.parentLayers != null) {
            return;
        }
        if (this.parentLayer == null) {
            this.parentLayers = Collections.emptyList();
            return;
        }
        this.parentLayers = new ArrayList();
        for (BaseLayer baseLayer = this.parentLayer; baseLayer != null; baseLayer = baseLayer.parentLayer) {
            this.parentLayers.add(baseLayer);
        }
    }

    private void clearCanvas(Canvas canvas) {
        RectF rectF = this.rect;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.clearPaint);
        L.endSection();
    }

    public final void addAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        if (baseKeyframeAnimation == null) {
            return;
        }
        this.animations.add(baseKeyframeAnimation);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void addValueCallback(LottieValueCallback lottieValueCallback, Object obj) {
        this.transform.applyValueCallback(lottieValueCallback, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0242  */
    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r20, android.graphics.Matrix r21, int r22) {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.BaseLayer.draw(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    abstract void drawLayer(Canvas canvas, Matrix matrix, int i);

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        buildParentLayerListIfNeeded();
        Matrix matrix2 = this.boundsMatrix;
        matrix2.set(matrix);
        if (z) {
            List<BaseLayer> list = this.parentLayers;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else {
                        matrix2.preConcat(this.parentLayers.get(size).transform.getMatrix());
                    }
                }
            } else {
                BaseLayer baseLayer = this.parentLayer;
                if (baseLayer != null) {
                    matrix2.preConcat(baseLayer.transform.getMatrix());
                }
            }
        }
        matrix2.preConcat(this.transform.getMatrix());
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.layerModel.getName();
    }

    final boolean hasMasksOnThisLayer() {
        MaskKeyframeAnimation maskKeyframeAnimation = this.mask;
        return (maskKeyframeAnimation == null || ((ArrayList) maskKeyframeAnimation.getMaskAnimations()).isEmpty()) ? false : true;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    public final void removeAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        ((ArrayList) this.animations).remove(baseKeyframeAnimation);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        if (keyPath.matches(i, getName())) {
            if (!"__container".equals(getName())) {
                keyPath2 = keyPath2.addKey(getName());
                if (keyPath.fullyResolvesTo(i, getName())) {
                    ((ArrayList) list).add(keyPath2.resolve(this));
                }
            }
            if (keyPath.propagateToChildren(i, getName())) {
                resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(i, getName()) + i, list, keyPath2);
            }
        }
    }

    final void setMatteLayer(BaseLayer baseLayer) {
        this.matteLayer = baseLayer;
    }

    void setOutlineMasksAndMattes(boolean z) {
        if (z && this.outlineMasksAndMattesPaint == null) {
            this.outlineMasksAndMattesPaint = new LPaint();
        }
        this.outlineMasksAndMattes = z;
    }

    final void setParentLayer(BaseLayer baseLayer) {
        this.parentLayer = baseLayer;
    }

    void setProgress(float f) {
        this.transform.setProgress(f);
        int i = 0;
        if (this.mask != null) {
            for (int i2 = 0; i2 < ((ArrayList) this.mask.getMaskAnimations()).size(); i2++) {
                ((BaseKeyframeAnimation) ((ArrayList) this.mask.getMaskAnimations()).get(i2)).setProgress(f);
            }
        }
        Layer layer = this.layerModel;
        if (layer.getTimeStretch() != 0.0f) {
            f /= layer.getTimeStretch();
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.inOutAnimation;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.setProgress(f / layer.getTimeStretch());
        }
        BaseLayer baseLayer = this.matteLayer;
        if (baseLayer != null) {
            this.matteLayer.setProgress(baseLayer.layerModel.getTimeStretch() * f);
        }
        while (true) {
            List<BaseKeyframeAnimation<?, ?>> list = this.animations;
            if (i >= ((ArrayList) list).size()) {
                return;
            }
            ((BaseKeyframeAnimation) ((ArrayList) list).get(i)).setProgress(f);
            i++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List<Content> list, List<Content> list2) {
    }

    void resolveChildKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
    }
}
