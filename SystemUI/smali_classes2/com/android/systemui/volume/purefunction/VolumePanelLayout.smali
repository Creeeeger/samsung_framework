.class public final Lcom/android/systemui/volume/purefunction/VolumePanelLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

.field public static final VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

.field public static final VERTICAL_PADDING_TOP_RATIO:F

.field public static final VERTICAL_WIDE_SCREEN_TOP_RATIO:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 7
    .line 8
    const v0, 0x3eae147b    # 0.34f

    .line 9
    .line 10
    .line 11
    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    .line 12
    .line 13
    const v0, 0x3eb851ec    # 0.36f

    .line 14
    .line 15
    .line 16
    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    .line 17
    .line 18
    const v0, 0x3e851eb8    # 0.26f

    .line 19
    .line 20
    .line 21
    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
