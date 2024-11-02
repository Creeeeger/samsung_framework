.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;
.super Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p3, Landroid/app/Notification;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p4, Landroid/app/Notification;

    .line 8
    .line 9
    invoke-virtual {p4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p1, 0x1

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget p0, p3, Landroid/app/Notification;->color:I

    .line 21
    .line 22
    iget p2, p4, Landroid/app/Notification;->color:I

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    if-ne p0, p2, :cond_0

    .line 26
    .line 27
    move p0, p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, p3

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p1, p3

    .line 34
    :cond_2
    :goto_1
    return p1
.end method
