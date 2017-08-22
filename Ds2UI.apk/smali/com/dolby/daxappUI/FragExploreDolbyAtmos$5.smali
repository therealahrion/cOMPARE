.class Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;
.super Ljava/lang/Object;
.source "FragExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c0003

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c0005

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c0006

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c000d

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c0009

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c000e

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c000a

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const v23, 0x7f0c000f

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v22, 0x1

    return v22

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v8, v22, v23

    if-gez v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_1
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :goto_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gtz v22, :cond_4

    if-gez v8, :cond_4

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    add-int v23, v23, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v11

    add-int v25, v25, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    add-int v23, v23, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v10

    add-int v25, v25, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    :cond_4
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_1

    if-gez v8, :cond_1

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_5
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_6

    if-gez v8, :cond_6

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_6
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_1

    if-gez v8, :cond_1

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v28

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    sub-int v25, v25, v11

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    sub-int v25, v25, v10

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_4
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :goto_5
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gtz v22, :cond_c

    if-lez v8, :cond_c

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_5

    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_9

    if-lez v8, :cond_9

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    :cond_d
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_e

    if-lez v8, :cond_e

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    :cond_e
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_9

    if-lez v8, :cond_9

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v18, v22, v23

    if-lez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v18, v22, v23

    :goto_7
    new-instance v7, Ljava/math/BigDecimal;

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_10

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_10
    const/high16 v22, -0x40800000    # -1.0f

    cmpg-float v22, v17, v22

    if-gez v22, :cond_11

    const/high16 v17, -0x40800000    # -1.0f

    :cond_11
    if-lez v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_17
    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-nez v22, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;Z)Z

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v22

    if-nez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$5;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
