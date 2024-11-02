.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDarkModeFilterApplied:Z

.field public final mHighlightFilterApplied:Z

.field public final mSurfaceHeight:I

.field public final mSurfaceWidth:I

.field public final mWhich:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IIIZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p2, 0x3c

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "DrawState : mode value is missing. which="

    .line 11
    .line 12
    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mWhich:I

    .line 25
    .line 26
    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceWidth:I

    .line 27
    .line 28
    iput p4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceHeight:I

    .line 29
    .line 30
    iput-boolean p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mHighlightFilterApplied:Z

    .line 31
    .line 32
    iput-boolean p6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mDarkModeFilterApplied:Z

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mWhich:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mWhich:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceWidth:I

    .line 16
    .line 17
    iget v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceWidth:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceHeight:I

    .line 22
    .line 23
    iget v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceHeight:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mHighlightFilterApplied:Z

    .line 28
    .line 29
    iget-boolean v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mHighlightFilterApplied:Z

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mDarkModeFilterApplied:Z

    .line 34
    .line 35
    iget-boolean p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mDarkModeFilterApplied:Z

    .line 36
    .line 37
    if-ne p0, p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "which="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mWhich:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceWidth:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "x"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mSurfaceHeight:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", highlight="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mHighlightFilterApplied:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", darkMode="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->mDarkModeFilterApplied:Z

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
