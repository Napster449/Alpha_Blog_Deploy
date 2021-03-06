class ArticlesController <ApplicationController

  def new
    @article = Article.new
  end

def create

  @article = Article.new(article_params)
if @article.save

redirect_to article_path(@article)  
else

  render :new
end

end

def show

@article = Article.find(params[:id])

end

def edit

  @article =  Article.find(params[:id])

end
def update

  @article = Article.find(params[:id])
  if @article.update(article_params)
  redirect_to article_path(@article)
    flash[:notice]= "Article successfully updated"
  else
    render :new
  end

end
def index

@article = Article.all

end
private
def article_params

  params.require(:article).permit(:title, :description)

end

end


