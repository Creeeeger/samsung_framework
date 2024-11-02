.class public final Lcom/android/systemui/statusbar/connectivity/WifiIcons;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    const v0, 0x10805c6

    .line 2
    .line 3
    .line 4
    const v1, 0x10805c7

    .line 5
    .line 6
    .line 7
    const v2, 0x10805c5

    .line 8
    .line 9
    .line 10
    const v3, 0x10805c8

    .line 11
    .line 12
    .line 13
    const v4, 0x10805c9

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f080a18

    .line 21
    .line 22
    .line 23
    const v2, 0x7f080a19

    .line 24
    .line 25
    .line 26
    const v3, 0x7f080a17

    .line 27
    .line 28
    .line 29
    const v4, 0x7f080a1a

    .line 30
    .line 31
    .line 32
    const v5, 0x7f080a1b

    .line 33
    .line 34
    .line 35
    filled-new-array {v3, v1, v2, v4, v5}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v1, v0}, [[I

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sput-object v5, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    aget-object v0, v5, v0

    .line 47
    .line 48
    array-length v0, v0

    .line 49
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 50
    .line 51
    const-string v3, "Wi-Fi Icons"

    .line 52
    .line 53
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I

    .line 54
    .line 55
    sget-object v6, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 56
    .line 57
    const v7, 0x10805c5

    .line 58
    .line 59
    .line 60
    const v8, 0x10805c5

    .line 61
    .line 62
    .line 63
    const v9, 0x10805c5

    .line 64
    .line 65
    .line 66
    const v10, 0x10805c5

    .line 67
    .line 68
    .line 69
    const v11, 0x7f1300da

    .line 70
    .line 71
    .line 72
    sget-object v12, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ACTIVITY:[I

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    invoke-direct/range {v2 .. v12}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
