.class public final synthetic Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQQSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQQSTileHost;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQQSTileHost;->restoreQQSTileListIfNeeded(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "SecQQSTileHost"

    .line 14
    .line 15
    const-string/jumbo v1, "start addTunable"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 28
    .line 29
    const-string/jumbo v1, "sysui_quick_qs_tiles"

    .line 30
    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 72
    .line 73
    instance-of v3, v2, Lcom/android/systemui/plugins/qs/SQSTile;

    .line 74
    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    check-cast v2, Lcom/android/systemui/plugins/qs/SQSTile;

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const-string p0, ","

    .line 90
    .line 91
    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v1, "QPBS1100"

    .line 96
    .line 97
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .line 102
    .line 103
    sget-boolean p0, Lcom/android/systemui/qs/SecQQSTileHost;->LOGGING_DEBUG:Z

    .line 104
    .line 105
    if-eqz p0, :cond_2

    .line 106
    .line 107
    sget-boolean p0, Lcom/android/systemui/util/SystemUIAnalytics;->sConfigured:Z

    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
