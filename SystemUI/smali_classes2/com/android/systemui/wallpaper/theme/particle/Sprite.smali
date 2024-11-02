.class public final Lcom/android/systemui/wallpaper/theme/particle/Sprite;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mModifierCount:I

.field public final mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

.field public mScale:F

.field public final visible:Z

.field public width:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->visible:Z

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    .line 11
    .line 12
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->x:F

    .line 13
    .line 14
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->y:F

    .line 15
    .line 16
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    .line 17
    .line 18
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    .line 19
    .line 20
    return-void
.end method
