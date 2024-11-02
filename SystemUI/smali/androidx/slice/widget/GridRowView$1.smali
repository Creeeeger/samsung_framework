.class public final Landroidx/slice/widget/GridRowView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/GridRowView;

.field public final synthetic val$date:Ljava/util/Date;

.field public final synthetic val$isDatePicker:Z

.field public final synthetic val$pickerItem:Landroidx/slice/SliceItem;

.field public final synthetic val$rowIndex:I


# direct methods
.method public constructor <init>(Landroidx/slice/widget/GridRowView;Ljava/util/Date;ZLandroidx/slice/SliceItem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/slice/widget/GridRowView$1;->val$date:Ljava/util/Date;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/slice/widget/GridRowView$1;->val$isDatePicker:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/slice/widget/GridRowView$1;->val$pickerItem:Landroidx/slice/SliceItem;

    .line 8
    .line 9
    iput p5, p0, Landroidx/slice/widget/GridRowView$1;->val$rowIndex:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/slice/widget/GridRowView$1;->val$date:Ljava/util/Date;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, v0, Landroidx/slice/widget/GridRowView$1;->val$isDatePicker:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Landroid/app/DatePickerDialog;

    .line 17
    .line 18
    iget-object v3, v0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const v5, 0x7f1401a4

    .line 25
    .line 26
    .line 27
    new-instance v6, Landroidx/slice/widget/GridRowView$DateSetListener;

    .line 28
    .line 29
    iget-object v3, v0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    .line 30
    .line 31
    iget-object v7, v0, Landroidx/slice/widget/GridRowView$1;->val$pickerItem:Landroidx/slice/SliceItem;

    .line 32
    .line 33
    iget v0, v0, Landroidx/slice/widget/GridRowView$1;->val$rowIndex:I

    .line 34
    .line 35
    invoke-direct {v6, v3, v7, v0}, Landroidx/slice/widget/GridRowView$DateSetListener;-><init>(Landroidx/slice/widget/GridRowView;Landroidx/slice/SliceItem;I)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    move-object v3, v2

    .line 54
    invoke-direct/range {v3 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Landroid/app/TimePickerDialog;

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const v12, 0x7f1401a4

    .line 70
    .line 71
    .line 72
    new-instance v13, Landroidx/slice/widget/GridRowView$TimeSetListener;

    .line 73
    .line 74
    iget-object v3, v0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    .line 75
    .line 76
    iget-object v4, v0, Landroidx/slice/widget/GridRowView$1;->val$pickerItem:Landroidx/slice/SliceItem;

    .line 77
    .line 78
    iget v0, v0, Landroidx/slice/widget/GridRowView$1;->val$rowIndex:I

    .line 79
    .line 80
    invoke-direct {v13, v3, v4, v0}, Landroidx/slice/widget/GridRowView$TimeSetListener;-><init>(Landroidx/slice/widget/GridRowView;Landroidx/slice/SliceItem;I)V

    .line 81
    .line 82
    .line 83
    const/16 v0, 0xb

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    const/16 v0, 0xc

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    move-object v10, v2

    .line 98
    invoke-direct/range {v10 .. v16}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/app/TimePickerDialog;->show()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method
