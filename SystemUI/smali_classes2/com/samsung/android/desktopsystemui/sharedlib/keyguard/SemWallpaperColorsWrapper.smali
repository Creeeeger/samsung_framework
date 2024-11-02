.class public Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;
    }
.end annotation


# static fields
.field public static final COMPARE_ADAPTIVE_CONTRAST:I = 0x2

.field public static final COMPARE_COLOR:I = 0x0

.field public static final COMPARE_SHADOW:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final FONT_COLOR_BLACK:I = 0x1

.field public static final FONT_COLOR_GRAY:I = 0x2

.field public static final FONT_COLOR_WHITE:I = 0x0

.field public static final HOMESCREEN_BODY:I = 0x40

.field public static final HOMESCREEN_NAVIBAR:I = 0x80

.field public static final HOMESCREEN_STATUSBAR:I = 0x20

.field public static final LOCKSCREEN_BACKGROUND:I = 0x200

.field public static final LOCKSCREEN_BODY_BOTTOM:I = 0x80

.field public static final LOCKSCREEN_BODY_MID:I = 0x40

.field public static final LOCKSCREEN_BODY_TOP:I = 0x20

.field public static final LOCKSCREEN_BOUNCER:J = 0x80000000000L

.field public static final LOCKSCREEN_CLOCK:J = 0x400000000L

.field public static final LOCKSCREEN_FINGERPRINT:J = 0x40000000000L

.field public static final LOCKSCREEN_HELP_TEXT:J = 0x4000000000L

.field public static final LOCKSCREEN_LOCK_ICON:J = 0x200000000L

.field public static final LOCKSCREEN_MUSIC:J = 0x2000000000L

.field public static final LOCKSCREEN_NAVIBAR:I = 0x100

.field public static final LOCKSCREEN_NAVI_BAR:J = 0x10000000000L

.field public static final LOCKSCREEN_NIO:J = 0x800000000L

.field public static final LOCKSCREEN_NIO_TEXT:J = 0x1000000000L

.field public static final LOCKSCREEN_SECURE_TEXT:J = 0x20000000000L

.field public static final LOCKSCREEN_SHORTCUT:J = 0x8000000000L

.field public static final LOCKSCREEN_STATUSBAR:I = 0x10

.field public static final LOCKSCREEN_STATUS_BAR:J = 0x100000000L


# instance fields
.field private final mWallpaperColors:Landroid/app/SemWallpaperColors;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/app/SemWallpaperColors;

    invoke-direct {v0, p1}, Landroid/app/SemWallpaperColors;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
    .locals 1

    .line 5
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;

    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/app/SemWallpaperColors;)V

    return-object v0
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
    .locals 1

    .line 3
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/app/SemWallpaperColors;)V

    return-object v0
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;Z)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/app/SemWallpaperColors;)V

    return-object v0
.end method

.method public static fromXml(Ljava/lang/String;)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/app/SemWallpaperColors;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static getBlankWallpaperColors()Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;

    .line 2
    .line 3
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;-><init>(Landroid/app/SemWallpaperColors;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static getDeviceVersion()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getLegibilityVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getLegibilityVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getXmlVersion(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/app/SemWallpaperColors;->getXmlVersion(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->describeContents()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public get(I)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;-><init>(Landroid/app/SemWallpaperColors$Item;Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;)V

    return-object v0
.end method

.method public get(Landroid/graphics/Rect;)Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$Item;-><init>(Landroid/app/SemWallpaperColors$Item;Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper$1;)V

    return-object v0
.end method

.method public getAdaptiveDimColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getAdaptiveDimColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAdaptiveDimOpacity()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getAdaptiveDimOpacity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getColorThemeColor(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public getDarkModeDimColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getDarkModeDimColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getDarkModeDimOpacity()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getDarkModeDimOpacity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getKey()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getKey()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getXml()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->getXml()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public save(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/SemWallpaperColorsWrapper;->mWallpaperColors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
