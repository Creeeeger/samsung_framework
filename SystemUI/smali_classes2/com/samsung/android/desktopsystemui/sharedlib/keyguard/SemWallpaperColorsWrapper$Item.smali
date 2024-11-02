.class public Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final mItem:Landroid/app/SemWallpaperColors$Item;


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method public constructor <init>(IIFF[FLcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V
    .locals 8

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v7, Landroid/app/SemWallpaperColors$Item;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors$Item;-><init>(IIFF[FLcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    iput-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/SemWallpaperColors$Item;-><init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method private constructor <init>(Landroid/app/SemWallpaperColors$Item;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/SemWallpaperColors$Item;Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;-><init>(Landroid/app/SemWallpaperColors$Item;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public getFontColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getFontColorRgb()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result p0

    return p0
.end method

.method public getFontColorRgb(I)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb(I)I

    move-result p0

    return p0
.end method

.method public getShadowOpacity()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getShadowSize()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
