.class public interface abstract Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract isUsingELPlusEffect()Z
.end method

.method public abstract registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V
.end method

.method public abstract showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract unRegisterEdgeWindowCallback()V
.end method

.method public abstract updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
.end method
