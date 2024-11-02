.class public final Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;
.super Lcom/android/systemui/wallpaper/theme/SpriteModifier;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCurrentFrameIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/SpriteModifier;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/android/systemui/wallpaper/theme/particle/Sprite;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 2
    .line 3
    iput v0, p1, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->currentFrame:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 8
    .line 9
    iget p1, p1, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->frameSize:I

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method
