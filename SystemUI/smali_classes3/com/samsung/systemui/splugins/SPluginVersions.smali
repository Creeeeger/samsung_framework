.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final MODULE_MULTISTAR:Ljava/lang/String; = "multistar"

.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static PLATFORM_VERSION_EDGELIGHTING_PLUS:I = 0x0

.field public static PLATFORM_VERSION_MULTISTAR:I = 0x0

.field public static PLATFORM_VERSION_NAVILLERA:I = 0x0

.field public static PLATFORM_VERSION_NOTISTAR:I = 0x0

.field public static PLATFORM_VERSION_PLUGIN_LOCK:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_VOLUME_STAR:I = 0x0

.field private static final VERSION_EDGELIGHTING_PLUS:I = 0x1770

.field private static final VERSION_MULTISTAR:I = 0x1b58

.field private static final VERSION_NAVILLERA:I = 0x2328

.field private static final VERSION_NOTISTAR:I = 0x1b59

.field private static final VERSION_PLUGIN_LOCK:I = 0xdac

.field private static final VERSION_SLIMINDICATOR:I = 0x1b5d

.field private static final VERSION_SPLUGINMANAGER:I = 0x44d

.field private static final VERSION_VOLUME_STAR:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initVersion()V
    .locals 1

    .line 1
    const/16 v0, 0x1b5d

    .line 2
    .line 3
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    .line 4
    .line 5
    const/16 v0, 0xdac

    .line 6
    .line 7
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PLUGIN_LOCK:I

    .line 8
    .line 9
    const/16 v0, 0xbb8

    .line 10
    .line 11
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_VOLUME_STAR:I

    .line 12
    .line 13
    const/16 v0, 0x1b58

    .line 14
    .line 15
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    .line 16
    .line 17
    const/16 v0, 0x1b59

    .line 18
    .line 19
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    .line 20
    .line 21
    const/16 v0, 0x2328

    .line 22
    .line 23
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NAVILLERA:I

    .line 24
    .line 25
    const/16 v0, 0x1770

    .line 26
    .line 27
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_EDGELIGHTING_PLUS:I

    .line 28
    .line 29
    return-void
.end method
