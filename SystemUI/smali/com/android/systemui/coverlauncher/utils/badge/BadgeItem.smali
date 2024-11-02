.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mInfo:Ljava/lang/String;

.field public final mNotificationItems:Ljava/util/List;

.field public mTotalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    .line 19
    .line 20
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget v0, v1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 23
    .line 24
    iget p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    iget v2, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 31
    .line 32
    sub-int/2addr v2, v0

    .line 33
    add-int/2addr v2, p1

    .line 34
    iput v2, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 35
    .line 36
    iput p1, v1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 47
    .line 48
    iget p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 49
    .line 50
    add-int/2addr v1, p1

    .line 51
    iput v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 52
    .line 53
    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "info="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", count="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
