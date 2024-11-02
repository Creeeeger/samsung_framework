.class public final Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

.field public static final progressTrackColor:I

.field public static final remainTrackBorderColor:I

.field public static final remainTrackColor:I

.field public static final uxPrimaryColor:I

.field public static final uxSecondaryColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    .line 7
    .line 8
    const v0, -0x1600ce

    .line 9
    .line 10
    .line 11
    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    .line 12
    .line 13
    const v0, -0x7fff0035

    .line 14
    .line 15
    .line 16
    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->progressTrackColor:I

    .line 20
    .line 21
    const v0, 0x33ffffff

    .line 22
    .line 23
    .line 24
    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackColor:I

    .line 25
    .line 26
    const/high16 v0, 0x4c000000    # 3.3554432E7f

    .line 27
    .line 28
    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackBorderColor:I

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
