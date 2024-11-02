.class public final Lcom/android/systemui/screenshot/ScreenshotData$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forTesting()Lcom/android/systemui/screenshot/ScreenshotData;
    .locals 15

    .line 1
    new-instance p0, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const/16 v13, 0xf00

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/screenshot/ScreenshotData;-><init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;Landroid/net/Uri;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
