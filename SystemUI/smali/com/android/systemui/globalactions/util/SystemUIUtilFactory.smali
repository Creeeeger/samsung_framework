.class public final Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/util/UtilFactory;


# instance fields
.field public final mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public final mProvider:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 12
    .line 13
    const-class p0, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 14
    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const-class p2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-class p0, Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-class p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance p0, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    const-class p2, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    .line 48
    .line 49
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    .line 53
    .line 54
    const-class p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 55
    .line 56
    invoke-interface {p3, p2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 61
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 63
    .line 64
    .line 65
    const-class p2, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    .line 66
    .line 67
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    new-instance p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    const-class p2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 76
    .line 77
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const-class p2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 86
    .line 87
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    new-instance p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 91
    .line 92
    const-class p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 93
    .line 94
    invoke-interface {p3, p2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 99
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 101
    .line 102
    .line 103
    const-class p2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 104
    .line 105
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    new-instance p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    const-class p2, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    .line 114
    .line 115
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    new-instance p0, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    const-class p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    .line 124
    .line 125
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
