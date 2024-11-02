.class public final Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final salesCode:Ljava/lang/String;

.field public final singleSKU:Z

.field public final unified:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 5
    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->salesCode:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "mdc.singlesku"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->singleSKU:Z

    .line 23
    .line 24
    const-string v0, "mdc.unified"

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->unified:Z

    .line 31
    .line 32
    const-string/jumbo p0, "persist.ril.config.dualims"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    const-string/jumbo p0, "ril.cdma.inecmmode"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    const-string/jumbo p0, "ro.ril.svlte1x"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    const-string/jumbo p0, "ro.ril.svdo"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
