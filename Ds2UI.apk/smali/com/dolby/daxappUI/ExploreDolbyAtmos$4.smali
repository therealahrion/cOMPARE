.class Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/ExploreDolbyAtmos;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0004

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0005

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0006

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000d

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0009

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000e

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000a

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000f

    invoke-virtual/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v23, 0x1

    return v23

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get13(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v9, v23, v24

    if-gez v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_1
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :goto_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gtz v23, :cond_4

    if-gez v9, :cond_4

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    add-int v24, v24, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v12

    add-int v26, v26, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    add-int v24, v24, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v11

    add-int v26, v26, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    :cond_4
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_1

    if-gez v9, :cond_1

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_5
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_6

    if-gez v9, :cond_6

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_6
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_1

    if-gez v9, :cond_1

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v17

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    sub-int v24, v17, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    sub-int v26, v26, v27

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v29

    sub-int v28, v28, v29

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    sub-int v26, v26, v12

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    sub-int v26, v26, v11

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_b

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_5
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_c

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :goto_6
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_e

    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gtz v23, :cond_d

    if-lez v9, :cond_d

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_6

    :cond_d
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_a

    if-lez v9, :cond_a

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    :cond_e
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_f

    if-lez v9, :cond_f

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    :cond_f
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_a

    if-lez v9, :cond_a

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v20, v23, v24

    if-lez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v20, v23, v24

    :goto_8
    if-eqz v20, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    :cond_11
    const/16 v20, 0x0

    :cond_12
    new-instance v7, Ljava/math/BigDecimal;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v23, v24, v26

    if-lez v23, :cond_13

    const/high16 v19, 0x3f800000    # 1.0f

    :cond_13
    const/high16 v23, -0x40800000    # -1.0f

    cmpg-float v23, v19, v23

    if-gez v23, :cond_14

    const/high16 v19, -0x40800000    # -1.0f

    :cond_14
    if-lez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    rsub-int/lit8 v20, v23, 0x0

    goto/16 :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    sub-int v20, v23, v24

    goto/16 :goto_8

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int/lit8 v20, v23, 0x0

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1a
    if-nez v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    if-nez v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-set3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;Z)Z

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
