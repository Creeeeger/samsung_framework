.class public final Lcom/android/systemui/navigationbar/util/OneHandModeUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

.field public static oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;


# instance fields
.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIF)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    .line 13
    .line 14
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    .line 15
    .line 16
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    .line 17
    .line 18
    new-instance v2, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    int-to-float v3, v3

    .line 26
    mul-float/2addr v3, p0

    .line 27
    int-to-float v0, v0

    .line 28
    add-float/2addr v3, v0

    .line 29
    float-to-int v3, v3

    .line 30
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    mul-float/2addr v3, p0

    .line 36
    int-to-float v1, v1

    .line 37
    add-float/2addr v3, v1

    .line 38
    float-to-int v3, v3

    .line 39
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    int-to-float v3, v3

    .line 44
    mul-float/2addr v3, p0

    .line 45
    add-float/2addr v3, v0

    .line 46
    float-to-int v0, v3

    .line 47
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    int-to-float p1, p1

    .line 52
    mul-float/2addr p1, p0

    .line 53
    add-float/2addr p1, v1

    .line 54
    float-to-int p0, p1

    .line 55
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    return-object v2
.end method
