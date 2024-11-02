.class public final synthetic Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/time/LocalTime;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$0:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0xb

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v2, 0xa

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0xc

    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance p1, Ljava/util/Date;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
