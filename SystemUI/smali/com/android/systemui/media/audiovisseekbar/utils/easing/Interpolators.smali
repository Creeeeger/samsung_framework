.class public final Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;

.field public static final MOTION_ACTIVITY_EASING:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const v3, 0x3e6147ae    # 0.22f

    .line 14
    .line 15
    .line 16
    const/high16 v4, 0x3e800000    # 0.25f

    .line 17
    .line 18
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;->MOTION_ACTIVITY_EASING:Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
