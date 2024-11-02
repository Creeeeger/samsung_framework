.class public final Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mEdgeLightingAction:Z

.field public mEffectColors:[I

.field public mEffectType:I

.field public mHasActionButton:Z

.field public mInfiniteLighting:Z

.field public mIsBlackBG:Z

.field public mIsGrayScaled:Z

.field public mIsMultiResolutionSupoorted:Z

.field public mIsSupportAppIcon:Z

.field public mLightingDuration:J

.field public mNotificationKey:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPlusEffectBundle:Landroid/os/Bundle;

.field public mShouldShowAppIcon:Z

.field public mStrokeAlpha:F

.field public mStrokeWidth:F

.field public mText:[Ljava/lang/String;

.field public mWidthDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    .line 11
    .line 12
    return-void
.end method
