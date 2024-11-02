.class public final synthetic Lcom/android/systemui/qs/SecSubScreenQSTileHost$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecSubScreenQSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecSubScreenQSTileHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecSubScreenQSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecSubScreenQSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SecSubScreenQSTileHost"

    .line 7
    .line 8
    const-string/jumbo v1, "start addTunable"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 21
    .line 22
    const-string/jumbo v1, "sysui_sub_qs_tiles"

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
