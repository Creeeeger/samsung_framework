.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public bigPicture:I

.field public extender:I

.field public extras:I

.field public largeIcon:I

.field public smallIcon:I

.field public styleIcon:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    .line 5
    iput p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    .line 6
    iput p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    .line 7
    iput p6, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    .line 8
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;-><init>(IIIIII)V

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
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;

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
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    .line 35
    .line 36
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    .line 42
    .line 43
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    .line 49
    .line 50
    iget p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    .line 51
    .line 52
    if-eq p0, p1, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    .line 12
    .line 13
    const-string v5, "Totals(smallIcon="

    .line 14
    .line 15
    const-string v6, ", largeIcon="

    .line 16
    .line 17
    const-string v7, ", styleIcon="

    .line 18
    .line 19
    invoke-static {v5, v0, v6, v1, v7}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ", bigPicture="

    .line 24
    .line 25
    const-string v5, ", extender="

    .line 26
    .line 27
    invoke-static {v0, v2, v1, v3, v5}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", extras="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, ")"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
