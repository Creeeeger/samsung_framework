.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mLastUpdateTime:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    const-wide/32 v4, 0x240c8400

    .line 15
    .line 16
    .line 17
    cmp-long p2, v2, v4

    .line 18
    .line 19
    if-lez p2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mLastUpdateTime:J

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    .line 25
    .line 26
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge p2, v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    const-string p2, "QPNS0001"

    .line 51
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    .line 53
    .line 54
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
