import React from 'react';
import Carousel from 'react-bootstrap/Carousel'
import "../assets/styles/landingPage.css"
import { Link } from 'react-router-dom'
import { connect } from 'react-redux';
import { searchProduct } from '../redux/actions/user';
import logo from "../assets/logo.png"

class LandingPage extends React.Component {
    state = {
        searchProduct: "",
    }

    render() {
        return (
            <div className="mb-5 mx-5 d-flex box justify-content-between" >
                <div className="p-5 col-8 d-flex flex-column justify-content-center mb-5">
                    <div className="d-flex justify-content-center align-items-center">
                        <img src={logo} alt="logo" className="big-logo" />
                    </div>
                    <div className="d-flex flex-column align-items-center ">
                        <h1 >Thời trang là một phần không thể tách rời trong cuộc sống của chúng ta.</h1>
                        <h4>Khám phá các bộ sưu tập của chúng tôi để tìm trang phục chính xác cho mọi nhu cầu của bạn. </h4>
                        {
                            this.props.userGlobal.auth_status === "admin" ?
                                null
                                :
                                this.props.userGlobal.auth_status === "superadmin" ?
                                    null
                                    :
                                    <Link className="mt-2" to={"/products"}>
                                        <button onClick={() => this.props.searchProduct(this.state)} className="btn btn-basic mt-2">khám phá ngay bây giờ</button>
                                    </Link>

                        }

                    </div>
                </div>

            </div>

        )
    }
}

const mapStateToProps = (state) => {
    return {
        userGlobal: state.user,
    }
};

const mapDispatchToProps = {
    searchProduct,
}

export default connect(mapStateToProps, mapDispatchToProps)(LandingPage);