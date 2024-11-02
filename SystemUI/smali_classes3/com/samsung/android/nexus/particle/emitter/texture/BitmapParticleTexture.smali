.class public final Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;
.super Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mBounds:Landroid/graphics/RectF;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onBoundChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->mLruCache:Landroid/util/LruCache;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    sget v1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->uid:I

    .line 18
    .line 19
    add-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    sput v3, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->uid:I

    .line 22
    .line 23
    iput v1, v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    .line 24
    .line 25
    invoke-static {v2, v0}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->loadToCache(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v3, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->mLruCache:Landroid/util/LruCache;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/graphics/Bitmap;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->loadToCache(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 53
    .line 54
    .line 55
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "null loader"

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_4
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onRelease()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->mLruCache:Landroid/util/LruCache;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "null loader"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
