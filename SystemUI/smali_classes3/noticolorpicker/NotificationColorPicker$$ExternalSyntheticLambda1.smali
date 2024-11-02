.class public final synthetic Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput p4, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    .line 7
    iget p0, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    check-cast p1, Lcom/android/internal/widget/MessagingGroup;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
