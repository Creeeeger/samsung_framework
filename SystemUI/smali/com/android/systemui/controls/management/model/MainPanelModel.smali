.class public final Lcom/android/systemui/controls/management/model/MainPanelModel;
.super Lcom/android/systemui/controls/management/model/MainModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final panelActivity:Landroid/content/ComponentName;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final settings:Z

.field public final type:Lcom/android/systemui/controls/management/model/MainModel$Type;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/controls/management/model/MainModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->settings:Z

    .line 9
    .line 10
    sget-object p1, Lcom/android/systemui/controls/management/model/MainModel$Type;->PANEL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->type:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/MainPanelModel;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->settings:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;->settings:Z

    .line 38
    .line 39
    if-eq p0, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getType()Lcom/android/systemui/controls/management/model/MainModel$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->type:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->settings:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    :cond_1
    add-int/2addr v0, p0

    .line 28
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MainPanelModel(pendingIntent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", panelActivity="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", settings="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainPanelModel;->settings:Z

    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
