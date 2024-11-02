.class public final Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;
.super Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p1, "null drawer"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public final onLoad()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DrawBitmapLoader{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDrawer="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
