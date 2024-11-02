.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 7

    .line 1
    sget v0, Lcom/android/systemui/SystemUIApplication;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/TreeMap;

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, v1}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->getPostStartables()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "StartPostServices "

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServicesStarted:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    new-array v0, v0, [Lcom/android/systemui/CoreStartable;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 55
    .line 56
    const-string v1, "SystemUIPostBootTiming "

    .line 57
    .line 58
    const-wide/16 v4, 0x1000

    .line 59
    .line 60
    invoke-direct {v0, v1, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v1, p0

    .line 70
    move-object v6, v0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/SystemUIApplication;->startServicesImpl(Ljava/util/Map;Ljava/lang/String;[Lcom/android/systemui/CoreStartable;Ljava/lang/String;Landroid/util/TimingsTraceLog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServicesStarted:Z

    .line 79
    .line 80
    :goto_0
    return-void
.end method
