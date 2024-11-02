.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lnoticolorpicker/NotificationColorPicker;


# direct methods
.method public synthetic constructor <init>(Lnoticolorpicker/NotificationColorPicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lnoticolorpicker/NotificationColorPicker;->updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
